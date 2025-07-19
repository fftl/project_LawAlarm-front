import 'package:dio/dio.dart';
import 'package:law_alarm_front/models/law_department.dart';
import 'api_client.dart';

Future<List<LawDepartment>> getLawDepartment() async {

  List<LawDepartment> lawDepartments = [];
  try {
    final response = await ApiClient.dio.get(
      '/api/lawDepartment',
    );

    final data = response.data;

    final departments = data
        .map((e) => LawDepartment.fromJson(e as Map<String, dynamic>))
        .toList();

    print(departments);

  } on DioException catch (e) {
    print('에러: ${e.response?.statusCode}, 메시지: ${e.message}');
  }

  return lawDepartments;
}