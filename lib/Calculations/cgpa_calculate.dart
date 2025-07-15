import 'package:flutter/material.dart';

class CGPACalculatorPage extends StatefulWidget {
  @override
  _CGPACalculatorPageState createState() => _CGPACalculatorPageState();
}

class _CGPACalculatorPageState extends State<CGPACalculatorPage> {
  final List<TextEditingController> gpaControllers = [];
  final List<int> semesterCredits = [22, 26, 25, 22, 21, 20, 16, 10]; 
  int selectedSemesters = 0;
  double cgpa = 0.0;

  void calculateCGPA() {
    double totalCredits = 0;
    double totalWeightedGPA = 0;

    for (int i = 0; i < selectedSemesters; i++) {
      double? gpa = double.tryParse(gpaControllers[i].text);
      if (gpa != null) {
        totalWeightedGPA += gpa * semesterCredits[i];
        totalCredits += semesterCredits[i];
      }
    }

    setState(() {
      cgpa = totalCredits > 0 ? totalWeightedGPA / totalCredits : 0.0;
    });
  }

  void resetAll() {
    setState(() {
      selectedSemesters = 0;
      gpaControllers.clear();
      cgpa = 0.0;
    });
  }

  void updateSemesters(int count) {
    gpaControllers.clear();
    for (int i = 0; i < count; i++) {
      gpaControllers.add(TextEditingController());
    }
    setState(() {
      selectedSemesters = count;
      cgpa = 0.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('CGPA Calculator')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            DropdownButton<int>(
              value: selectedSemesters > 0 ? selectedSemesters : null,
              hint: const Text("Select No. of Completed Semesters"),
              items: List.generate(8, (index) => index + 1)
                  .map((int value) => DropdownMenuItem(
                        value: value,
                        child: Text("$value Semester${value > 1 ? 's' : ''}"),
                      ))
                  .toList(),
              onChanged: (value) {
                if (value != null) updateSemesters(value);
              },
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: selectedSemesters,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Semester ${index + 1} (Credits: ${semesterCredits[index]})',
                            style: const TextStyle(fontWeight: FontWeight.bold)),
                        TextField(
                          controller: gpaControllers[index],
                          keyboardType: TextInputType.numberWithOptions(decimal: true),
                          decoration: const InputDecoration(labelText: 'GPA'),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Text('CGPA: ${cgpa.toStringAsFixed(2)}', style: const TextStyle(fontSize: 20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: calculateCGPA, child: const Text('Calculate')),
                ElevatedButton(onPressed: resetAll, child: const Text('Reset')),
              ],
            )
          ],
        ),
      ),
    );
  }
}
