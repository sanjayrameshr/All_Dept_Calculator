// lib/semester_selection_page.dart

import 'package:flutter/material.dart';
import 'cgpa_page.dart';
import 'semester_page.dart';
import '../data/semester_details.dart';

enum Semester { One, Two, Three, Four, Five, Six, Seven, Eight }

class SemesterSelectionPage extends StatelessWidget {
  final String department;

  const SemesterSelectionPage({super.key, required this.department});

  @override
  Widget build(BuildContext context) {
    // Get the subject data for the selected department.
    final subjectsForDept = departmentData[department];

    // Handle case where department data might not exist
    if (subjectsForDept == null) {
      return Scaffold(
        appBar: AppBar(title: const Text("Error")),
        body: const Center(child: Text("Department data not found.")),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          '$department - Select Semester',
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          // Loop through each semester to create a card
          for (int i = 1; i <= Semester.values.length; i++)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ListTile(
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  leading: _getSemesterIcon(Semester.values[i - 1]),
                  title: Text(
                    'Semester ${Semester.values[i - 1].name}',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                    size: 20,
                  ),
                  onTap: () {
                    // Get the subjects for the tapped semester
                    final subjects = subjectsForDept.getSubjectsForSemester(i);

                    // Navigate to the SemesterPage
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SemesterPage(
                          subjects: subjects,
                          title: "$department - Semester $i GPA",
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          const SizedBox(height: 30),
          const Divider(thickness: 2, height: 40),
          // The CGPA button can remain here or be moved.
          ElevatedButton.icon(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CgpaCalculatorPage()),
              );
            },
            icon: const Icon(Icons.calculate, size: 28),
            label: const Text(
              'Calculate Overall CGPA',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            style: ElevatedButton.styleFrom(
              minimumSize: const Size.fromHeight(60),
              backgroundColor: Colors.green,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 5,
            ),
          ),
        ],
      ),
    );
  }

  // Helper function to return a specific icon for each semester
  Icon _getSemesterIcon(Semester semester) {
    switch (semester) {
      case Semester.One:
        return const Icon(Icons.filter_1_rounded, color: Colors.blue, size: 30);
      case Semester.Two:
        return const Icon(
          Icons.filter_2_rounded,
          color: Colors.orange,
          size: 30,
        );
      case Semester.Three:
        return const Icon(
          Icons.filter_3_rounded,
          color: Colors.green,
          size: 30,
        );
      case Semester.Four:
        return const Icon(Icons.filter_4_rounded, color: Colors.red, size: 30);
      case Semester.Five:
        return const Icon(
          Icons.filter_5_rounded,
          color: Colors.purple,
          size: 30,
        );
      case Semester.Six:
        return const Icon(Icons.filter_6_rounded, color: Colors.teal, size: 30);
      case Semester.Seven:
        return const Icon(
          Icons.filter_7_rounded,
          color: Colors.indigo,
          size: 30,
        );
      case Semester.Eight:
        return const Icon(
          Icons.filter_8_rounded,
          color: Colors.brown,
          size: 30,
        );
    }
  }
}
