import 'package:flutter/material.dart';
import '../Models/subjects.dart';

class CalculatePage extends StatefulWidget {
  final List<Subject> subjects;
  final String title;

  CalculatePage({required this.subjects, required this.title});

  @override
  _CalculatePageState createState() => _CalculatePageState();
}

class _CalculatePageState extends State<CalculatePage> {
  double gpa = 0.0;

  Map<String, double> gradeToPoint = {
    'O': 10,
    'A+': 9,
    'A': 8,
    'B+': 7,
    'B': 6,
    'C': 5,
    'RA': 0,
    'SA': 0,
    'WH': 0,
  };

  void calculateGPA() {
    double totalCredits = 0;
    double weightedPoints = 0;

    for (var subject in widget.subjects) {
      if (gradeToPoint.containsKey(subject.grade)) {
        double points = gradeToPoint[subject.grade]!;
        weightedPoints += points * subject.credit;
        totalCredits += subject.credit;
      }
    }

    setState(() {
      gpa = totalCredits > 0 ? weightedPoints / totalCredits : 0.0;
    });
  }

  void resetAll() {
    setState(() {
      for (var subject in widget.subjects) {
        subject.grade = '';
      }
      gpa = 0.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: widget.subjects.length,
                itemBuilder: (context, index) {
                  final subject = widget.subjects[index];
                  return ListTile(
                    title: Text('${subject.name} (${subject.credit} credits)'),
                    trailing: DropdownButton<String>(
                      value: subject.grade.isNotEmpty ? subject.grade : null,
                      hint: Text("Select Grade"),
                      items: gradeToPoint.keys.map((grade) {
                        return DropdownMenuItem(
                          value: grade,
                          child: Text(grade),
                        );
                      }).toList(),
                      onChanged: (value) {
                        setState(() {
                          subject.grade = value!;
                        });
                      },
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            Text('GPA: ${gpa.toStringAsFixed(2)} ', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: calculateGPA,style: ButtonStyle(backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 152, 197, 235))), child: Text("Calculate")),
                ElevatedButton(onPressed: resetAll,style: ButtonStyle(backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 242, 157, 151))), child: Text("Reset")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
