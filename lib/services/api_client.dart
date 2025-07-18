
import 'package:dio/dio.dart';

class ApiClient {
  // 1) Base URL 과 공통 옵션 설정
  static const String baseUrl = 'http://10.0.2.2:8080';

  // 2) Dio 싱글톤 인스턴스
  static final Dio dio = Dio(
    BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: const Duration(seconds: 5),
      receiveTimeout: const Duration(seconds: 3),
      headers: {
        'Content-Type': 'application/json',
        // 필요시 공통 헤더 추가
      },
    ),
  )..interceptors.add(
    LogInterceptor(requestBody: true, responseBody: true),
  );
}