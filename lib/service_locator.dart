import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_starter_riverpod/data/analytics/analytics_service.dart';
import 'package:flutter_starter_riverpod/data/data_sources/local/local_data_source.dart';
import 'package:flutter_starter_riverpod/data/data_sources/remote/remote_data_source.dart';
import 'package:flutter_starter_riverpod/data/repository/user_repository.dart';
import 'package:flutter_starter_riverpod/domain/use_cases/user/use_case_user.dart';
// Global level dependencies to access abstracted services and classes

final AutoDisposeProvider<AnalyticsService> analyticsServiceProvider =
    Provider.autoDispose((ref) => AnalyticsService());

final Provider<LocalDataSource> localDataManagerProvider =
    Provider((ref) => LocalDataSource());

final Provider<RemoteDataSource> remoteDataManagerProvider =
    Provider((ref) => RemoteDataSource());

final Provider<UserRepository> userRepositoryProvider = Provider((ref) {
  final localDataManager = ref.read(localDataManagerProvider);
  final remoteDataManager = ref.read(remoteDataManagerProvider);

  return UserRepository(localDataManager, remoteDataManager);
});

final Provider<UseCaseUser> useCaseUserProvider = Provider((ref) {
  final userRepository = ref.read(userRepositoryProvider);

  return UseCaseUser(userRepository);
});
