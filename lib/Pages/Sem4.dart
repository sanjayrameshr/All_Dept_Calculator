import 'package:flutter/material.dart';
import '../Models/subjects.dart';
import '../calculations/calculatePage.dart';

class Sem4GPA extends StatelessWidget {
  final List<Subject> sem4Subjects = [
      Subject(name: 'Electromagnetic Fields', credit: 3),
      Subject(name: 'Networks and Security', credit: 4),
      Subject(name: 'Linear Integrated Circuits', credit: 3),
      Subject(name: 'Digital Signal Processing', credit: 4),
      Subject(name: 'Communication Systems', credit: 3),
      Subject(name: 'Environmental Science and Sustainability', credit: 2),
      Subject(name: 'Communication Systems Lab', credit: 1.5),
      Subject(name: 'Linear Integrated Circuits Lab', credit: 1.5),
    ];

  @override
  Widget build(BuildContext context) {
    return CalculatePage(subjects: sem4Subjects, title: "Semester 4 GPA Calculator");
  }
}
