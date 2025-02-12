import 'package:dio/dio.dart';

class DioClient {
  final Dio _dio;

  DioClient({Dio? dio}) : _dio = dio ?? Dio() {
    _dio.options.baseUrl = 'http://192.168.100.7:8080/api'; // URL base da sua API
    _dio.options.connectTimeout = Duration(seconds: 10);
    _dio.options.receiveTimeout = Duration(seconds: 20);
    _dio.options.contentType = Headers.jsonContentType;

    _dio.interceptors.add(LogInterceptor(
        requestBody: true,
        responseBody: true,
        requestHeader: true,
        responseHeader: false,
        request: true));
  }

  Future<Response> get(String path,
      {Map<String, dynamic>? queryParameters, Options? options}) async {
    try {
      final response = await _dio.get(path,
          queryParameters: queryParameters, options: options);
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> post(String path,
      {dynamic data,
      Map<String, dynamic>? queryParameters,
      Options? options}) async {
    try {
      final response = await _dio.post(path,
          data: data, queryParameters: queryParameters, options: options);
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
