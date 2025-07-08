import 'package:dio/dio.dart';

final dio = Dio();

Future<Map<String, String>> login(String? email) async {

  print("입력받은 이메일입니다.>>"+ email!);
  Map<String, String> tokens = {};
  try {
    final response = await dio.post(
      'http://10.0.2.2:8080/auth/login',
      data:{'email': email}
    );

    tokens['access'] = response.data['access'];
    tokens['refresh'] = response.data['refresh'];

  } on DioException catch (e) {
    print('에러: ${e.response?.statusCode}, 메시지: ${e.message}');
  }

  return tokens;
}