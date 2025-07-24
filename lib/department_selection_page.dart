// lib/department_selection_page.dart

import 'package:flutter/material.dart';
import '../data/semester_details.dart';
import 'Pages/semester_selection_page.dart';

class DepartmentSelectionPage extends StatelessWidget {
  const DepartmentSelectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    final departments = departmentData.keys.toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Select Department',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        // Build a list item for each department
        itemCount: departments.length,
        itemBuilder: (context, index) {
          final departmentName = departments[index];
          return Padding(
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
                leading: CircleAvatar(
                  backgroundColor: Theme.of(
                    context,
                  ).primaryColor.withOpacity(0.1),
                  child: Text(
                    departmentName.substring(0, 2),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
                title: Text(
                  departmentName,
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          SemesterSelectionPage(department: departmentName),
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
