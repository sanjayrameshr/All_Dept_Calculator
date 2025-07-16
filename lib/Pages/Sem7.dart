import 'package:flutter/material.dart';
import '../Models/subjects.dart';
import '../calculations/calculatePage.dart';

class Sem7GPA extends StatelessWidget {
  final List<Subject> sem7Subjects = [
      Subject(name: 'Human Values and Ethics', credit: 2),
      Subject(name: 'Management Elective', credit: 3),
      Subject(name: 'Open Elective II', credit: 3),
      Subject(name: 'Open Elective III', credit: 3),
      Subject(name: 'Open Elective IV', credit: 3),
      Subject(name: 'Summer Internship', credit: 2),
    ];

  @override
  Widget build(BuildContext context) {
    return CalculatePage(subjects: sem7Subjects, title: "Semester 7 GPA Calculator");
  }
}
