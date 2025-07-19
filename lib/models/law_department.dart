// post_dto.dart
class LawDepartment {
  final String id;
  final String lawDepartmentName;

  LawDepartment({
    required this.id,
    required this.lawDepartmentName,
  });

  // JSON → Dart 객체 변환
  factory LawDepartment.fromJson(Map<String, dynamic> json) => LawDepartment(
    id: json['id'] as String,
    lawDepartmentName: json['lawDepartmentName'] as String,
  );

  // Dart 객체 → JSON 변환 (보낼 때)
  Map<String, dynamic> toJson() => {
    'id': id,
    'lawDepartmentName': lawDepartmentName,
  };

  @override
  String toString() =>
      'LawDepartment(id: $id, lawDepartmentName: $lawDepartmentName)';
}