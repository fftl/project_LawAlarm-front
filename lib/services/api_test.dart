import 'package:dio/dio.dart';

final dio = Dio();

void login() async {
  try {
    final response = await dio.get(
      'http://localhost:8080/data',
    );

    print(response.data);

  } on DioException catch (e) {
    print('에러: ${e.response?.statusCode}, 메시지: ${e.message}');
  }
}