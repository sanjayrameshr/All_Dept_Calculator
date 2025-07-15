import 'package:flutter/material.dart';
import '../Models/subjects.dart';
import '../calculations/calculatePage.dart';

class Sem6GPA extends StatelessWidget {
  final List<Subject> sem6Subjects = [
      Subject(name: 'Embedded Systems and IoT Design', credit: 4),
      Subject(name: 'Artificial Intelligence and Machine Learning', credit: 4),
      Subject(name: 'Open Elective I', credit: 3),
      Subject(name: 'Professional Elective IV', credit: 3),
      Subject(name: 'Professional Elective V', credit: 3),
      Subject(name: 'Professional Elective VI', credit: 3),
    ];

  @override
  Widget build(BuildContext context) {
    return CalculatePage(subjects: sem6Subjects, title: "Semester 6 GPA Calculator");
  }
}
