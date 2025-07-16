import 'package:flutter/material.dart';
import '../Models/subjects.dart';
import '../calculations/calculatePage.dart';

class Sem8GPA extends StatelessWidget {
  final List<Subject> sem8Subjects = [
      Subject(name: 'Project Work', credit: 10),
    ];

  @override
  Widget build(BuildContext context) {
    return CalculatePage(subjects: sem8Subjects, title: "Semester 8 GPA Calculator");
  }
}
