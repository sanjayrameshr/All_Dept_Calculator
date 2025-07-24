class Subjects {
  final String code;
  final String name;
  final double credit;
  String grade = '';

  Subjects({
    required this.code,
    required this.name,
    required this.credit,
    this.grade = '',
  });
}
