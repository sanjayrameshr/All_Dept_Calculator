class Subject {
  final String name;
  final double credit;
  String grade = ''; 

Subject({
    required this.name,
    required this.credit,
    this.grade = '',
  });
}
