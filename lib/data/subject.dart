class Subject {
  final String code;
  final String name;
  final double credit;
  String grade = ''; 

Subject({
    required this.code,
    required this.name,
    required this.credit,
    this.grade = '',
  });
}
