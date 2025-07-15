import 'package:flutter/material.dart';
import '../Models/subjects.dart';
import '../calculations/calculatePage.dart';

class Sem5GPA extends StatelessWidget {
  final List<Subject> sem5Subjects = [
      Subject(name: 'Wireless Communication', credit: 4),
      Subject(name: 'VLSI and Chip Design', credit: 3),
      Subject(name: 'Transmission Lines and RF Systems', credit: 3),
      Subject(name: 'Professional Elective I', credit: 3),
      Subject(name: 'Professional Elective II', credit: 3),
      Subject(name: 'Professional Elective III', credit: 3),
      Subject(name: 'VLSI Laboratory', credit: 2),
    ];

  @override
  Widget build(BuildContext context) {
    return CalculatePage(subjects: sem5Subjects, title: "Semester 5 GPA Calculator");
  }
}
