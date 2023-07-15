import 'package:flutter_starter_riverpod/data/repository/local/i_local_data_manager.dart';
import 'package:flutter_starter_riverpod/data/repository/remote/i_remote_data_manager.dart';

abstract class UseCaseBase {
  final ILocalDataManager _localDataManager;
  final IRemoteDataManager _remoteDataManager;

  const UseCaseBase(this._localDataManager, this._remoteDataManager);

  IRemoteDataManager get remoteDataManager => _remoteDataManager;

  ILocalDataManager get localDataManager => _localDataManager;
}
