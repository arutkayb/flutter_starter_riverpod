import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_starter_riverpod/core/network/custom_http_client.dart';

final remoteDataSourceProvider = Provider<RemoteDataSource>((ref) {
  return RemoteDataSource(
    ref.read(httpClientProvider),
  );
});

class RemoteDataSource {
  final CustomHttpClient _httpClient;

  // TODO: set your authorization header
  // TODO: set your base url and other backend related rules
  // TODO: configure retry rules and logic

  RemoteDataSource(this._httpClient);
}
