import 'package:flutter_starter_riverpod/data/data_sources/local/local_data_source.dart';
import 'package:flutter_starter_riverpod/data/data_sources/remote/remote_data_source.dart';

abstract class RepositoryBase {
  final LocalDataSource _localDataSource;
  final RemoteDataSource _remoteDataSource;

  RepositoryBase(this._localDataSource, this._remoteDataSource);
}
