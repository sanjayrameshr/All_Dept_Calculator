import '../pages/gpa_page.dart';
import 'package:flutter/material.dart';
import '../data/subject.dart';

class SemesterPage extends StatelessWidget {
  final List<Subject> subjects;
  final String title;

  SemesterPage({required this.subjects, required this.title});

  @override
  Widget build(BuildContext context) {
    return GpaCalculatorPage(subjects: subjects, title: title);
  }
}
