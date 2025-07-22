import 'package:flutter/material.dart';
import 'calculate_page.dart';
import '../data/subject.dart';

class SemesterPage extends StatelessWidget {
  final List<Subject> subjects;
  final String title;

  SemesterPage({required this.subjects, required this.title});

  @override
  Widget build(BuildContext context) {
    return CalculatePage(subjects: subjects, title: title);
  }
}
