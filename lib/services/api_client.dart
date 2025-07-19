
import 'package:dio/dio.dart';

class ApiClient {
  // static const String baseUrl = 'http://10.0.2.2:8080';
  static const String baseUrl = 'http://localhost:8080';

  static final Dio dio = Dio(
    BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
      headers: {
        'Content-Type': 'application/json',
        // 필요시 공통 헤더 추가
      },
    ),
  )..interceptors.add(
    LogInterceptor(requestBody: true, responseBody: true),
  );
}