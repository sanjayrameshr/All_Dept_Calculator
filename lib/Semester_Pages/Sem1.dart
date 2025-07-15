import 'package:flutter/material.dart';
import '../Models/subjects.dart';
import '../calculations/calculatePage.dart';

class Sem1GPA extends StatelessWidget {
  final List<Subject> sem1Subjects = [
    Subject(name: 'Professional English - I', credit: 3),
    Subject(name: 'Matrices and Calculus', credit: 4),
    Subject(name: 'Engineering Physics', credit: 3),
    Subject(name: 'Engineering Chemistry', credit: 3),
    Subject(name: 'Python Programming', credit: 3),
    Subject(name: 'Heritage of Tamils', credit: 1),
    Subject(name: 'Python Programming Lab', credit: 2),
    Subject(name: 'Physics and Chemistry Lab', credit: 2),
    Subject(name: 'English Lab', credit: 1),
  ];

  @override
  Widget build(BuildContext context) {
    return CalculatePage(subjects: sem1Subjects, title: "Semester 1 GPA Calculator");
  }
}
