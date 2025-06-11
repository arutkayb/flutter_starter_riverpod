import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_starter_riverpod/core/exceptions/network_exception.dart';

final httpClientProvider = Provider.autoDispose((ref) => CustomHttpClient());

class CustomHttpClient {
  final Dio client = Dio();

  Future<dynamic> get(String url, {Map<String, String>? headers}) async {
    try {
      final response = await client.get(
        url,
        options: Options(headers: headers),
      );
      return _handleResponse(response);
    } on DioException catch (e) {
      throw NetworkException(
        message: e.message ?? 'Network error occurred',
        statusCode: e.response?.statusCode,
      );
    }
  }

  Future<dynamic> post(String url,
      {Map<String, String>? headers, dynamic body}) async {
    try {
      final response = await client.post(
        url,
        data: body,
        options: Options(headers: headers),
      );
      return _handleResponse(response);
    } on DioException catch (e) {
      throw NetworkException(
        message: e.message ?? 'Network error occurred',
        statusCode: e.response?.statusCode,
      );
    }
  }

  Future<dynamic> put(String url,
      {Map<String, String>? headers, dynamic body}) async {
    try {
      final response = await client.put(
        url,
        data: body,
        options: Options(headers: headers),
      );
      return _handleResponse(response);
    } on DioException catch (e) {
      throw NetworkException(
        message: e.message ?? 'Network error occurred',
        statusCode: e.response?.statusCode,
      );
    }
  }

  Future<dynamic> delete(String url, {Map<String, String>? headers}) async {
    try {
      final response = await client.delete(
        url,
        options: Options(headers: headers),
      );
      return _handleResponse(response);
    } on DioException catch (e) {
      throw NetworkException(
        message: e.message ?? 'Network error occurred',
        statusCode: e.response?.statusCode,
      );
    }
  }

  dynamic _handleResponse(Response response) {
    if (response.statusCode != null &&
        response.statusCode! >= 200 &&
        response.statusCode! < 300) {
      return response.data;
    } else {
      throw NetworkException(
        message: 'Server error occurred',
        statusCode: response.statusCode,
      );
    }
  }
}
