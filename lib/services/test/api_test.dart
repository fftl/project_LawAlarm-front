
import '../law_department_api.dart';
import 'package:dio/dio.dart';

Future<void> main() async {
  var list = await getLawDepartment();
}