import 'package:flutter/material.dart';
import '../Models/subjects.dart';
import '../calculations/calculatePage.dart';

class Sem3GPA extends StatelessWidget {
  final List<Subject> sem3Subjects = [
  Subject(name: "Random Processes and Linear Algebra", credit: 4),
  Subject(name: "C Programming and Data Structures", credit: 3),
  Subject(name: "Signals and Systems", credit: 4),
  Subject(name: "Electronic Devices and Circuits", credit: 3),
  Subject(name: "Control Systems", credit: 3),
  Subject(name: "Digital Systems Design", credit: 4),
  Subject(name: "Electronic Devices and Circuits Lab", credit: 1.5),
  Subject(name: "C Programming and DS Lab", credit: 1.5),
  Subject(name: "Professional Development", credit: 1),
];

  @override
  Widget build(BuildContext context) {
    return CalculatePage(subjects: sem3Subjects, title: "Semester 3 GPA Calculator");
  }
}
