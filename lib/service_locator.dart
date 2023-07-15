import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_starter_riverpod/data/analytics/analytics_service.dart';
import 'package:flutter_starter_riverpod/data/analytics/mock_analytics_service.dart';
import 'package:flutter_starter_riverpod/data/repository/local/i_local_data_manager.dart';
import 'package:flutter_starter_riverpod/data/repository/mock/mock_local_data_manager.dart';
import 'package:flutter_starter_riverpod/data/repository/mock/mock_remote_data_manager.dart';
import 'package:flutter_starter_riverpod/data/repository/remote/i_remote_data_manager.dart';
import 'package:flutter_starter_riverpod/data/repository/use_cases/user/i_use_case_user.dart';
import 'package:flutter_starter_riverpod/data/repository/use_cases/user/use_case_user.dart';

// Global level dependencies to access abstracted services and classes

final AutoDisposeProvider<AnalyticsService> mockAnalyticsServiceProvider =
    Provider.autoDispose((ref) => MockAnalyticsService());

final Provider<ILocalDataManager> localDataManagerProvider =
    Provider((ref) => MockLocalDataManager());

final Provider<IRemoteDataManager> remoteDataManagerProvider =
    Provider((ref) => MockRemoteDataManager());

final Provider<IUseCaseUser> useCaseUserProvider = Provider((ref) {
  final localDataManager = ref.read(localDataManagerProvider);
  final remoteDataManager = ref.read(remoteDataManagerProvider);

  return UseCaseUser(localDataManager, remoteDataManager);
});
