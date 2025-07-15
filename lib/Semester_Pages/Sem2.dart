import 'package:flutter/material.dart';
import '../Models/subjects.dart';
import '../calculations/calculatePage.dart';

class Sem2GPA extends StatelessWidget {
  final List<Subject> sem2Subjects = [
  Subject(name: "Professional English - II", credit: 2),
  Subject(name: "Statistics and Numerical Methods", credit: 4),
  Subject(name: "Physics for Electronics Engineering", credit: 3),
  Subject(name: "Electrical and Instrumentation Engineering", credit: 3),
  Subject(name: "Engineering Graphics", credit: 4),
  Subject(name: "Circuit Analysis", credit: 4),
  Subject(name: "Tamils and Technology", credit: 1),
  Subject(name: "Engineering Practices Lab", credit: 2),
  Subject(name: "Circuit Analysis Lab", credit: 1),
  Subject(name: "Communication Lab", credit: 2),
];

  @override
  Widget build(BuildContext context) {
    return CalculatePage(subjects: sem2Subjects, title: "Semester 2 GPA Calculator");
  }
}
