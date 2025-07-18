import 'package:dio/dio.dart';
import 'api_client.dart';

Future<Map<String, String>> login(String? email) async {

  print("입력받은 이메일입니다.>>"+ email!);
  Map<String, String> tokens = {};
  try {
    final response = await ApiClient.dio.post(
        '/auth/login',
      data:{'email': email}
    );

    tokens['access'] = response.data['access'];
    tokens['refresh'] = response.data['refresh'];

  } on DioException catch (e) {
    print('에러: ${e.response?.statusCode}, 메시지: ${e.message}');
  }

  return tokens;
}

