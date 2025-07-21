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

  @override
  void dispose() {
    // Dispose all controllers to prevent memory leaks
    for (var controller in gpaControllers) {
      controller.dispose();
    }
    super.dispose();
  }

  void calculateCGPA() {
    double totalCredits = 0;
    double totalWeightedGPA = 0;
    bool hasInvalidInput = false;

    for (int i = 0; i < selectedSemesters; i++) {
      double? gpa = double.tryParse(gpaControllers[i].text);
      if (gpa != null && gpa >= 0 && gpa <= 10) { // Assuming GPA is out of 10
        totalWeightedGPA += gpa * semesterCredits[i];
        totalCredits += semesterCredits[i];
      } else {
        hasInvalidInput = true;
        // Optionally show an error message for invalid GPA input
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Please enter a valid GPA (0-10) for Semester ${i + 1}.'),
            backgroundColor: Colors.red,
          ),
        );
        break; // Stop calculation if an invalid GPA is found
      }
    }

    setState(() {
      if (!hasInvalidInput) {
        cgpa = totalCredits > 0 ? totalWeightedGPA / totalCredits : 0.0;
      } else {
        cgpa = 0.0; // Reset CGPA if there was an invalid input
      }
    });
  }

  void resetAll() {
    setState(() {
      selectedSemesters = 0;
      // Dispose and clear existing controllers
      for (var controller in gpaControllers) {
        controller.dispose();
      }
      gpaControllers.clear();
      cgpa = 0.0;
    });
  }

  void updateSemesters(int count) {
    // Dispose old controllers before clearing
    for (var controller in gpaControllers) {
      controller.dispose();
    }
    gpaControllers.clear();

    for (int i = 0; i < count; i++) {
      gpaControllers.add(TextEditingController());
    }
    setState(() {
      selectedSemesters = count;
      cgpa = 0.0; // Reset CGPA when semesters change
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'CGPA Calculator',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.deepPurple,
        elevation: 4,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Semester Selection Dropdown
            Card(
              margin: const EdgeInsets.only(bottom: 20.0),
              elevation: 3,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Select Number of Completed Semesters:",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.deepPurple,
                      ),
                    ),
                    const SizedBox(height: 10),
                    DropdownButtonFormField<int>(
                      value: selectedSemesters > 0 ? selectedSemesters : null,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide(color: Colors.deepPurple.shade200),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide(color: Colors.deepPurple.shade200),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: const BorderSide(color: Colors.deepPurple, width: 2.0),
                        ),
                        contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                        hintText: "Choose Semesters",
                        hintStyle: TextStyle(color: Colors.grey[500]),
                      ),
                      icon: const Icon(Icons.arrow_drop_down, color: Colors.deepPurple),
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
                  ],
                ),
              ),
            ),

            // List of Semester GPA Input Fields
            Expanded(
              child: ListView.builder(
                itemCount: selectedSemesters,
                itemBuilder: (context, index) {
                  // Important: Ensure we don't go out of bounds for semesterCredits
                  if (index >= semesterCredits.length) {
                    // This case should ideally not happen if semesterCredits is correctly sized
                    // relative to maximum possible semesters (8).
                    return const SizedBox.shrink();
                  }
                  return Card(
                    margin: const EdgeInsets.symmetric(vertical: 6.0),
                    elevation: 1.5,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        children: [
                          Icon(Icons.school, color: Colors.deepPurple.shade300),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Semester ${index + 1} (Credits: ${semesterCredits[index]})',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    color: Colors.deepPurple,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                TextField(
                                  controller: gpaControllers[index],
                                  keyboardType: const TextInputType.numberWithOptions(decimal: true),
                                  decoration: InputDecoration(
                                    labelText: 'Enter GPA',
                                    hintText: 'e.g., 8.5',
                                    labelStyle: TextStyle(color: Colors.grey[700]),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                      borderSide: BorderSide(color: Colors.grey.shade300),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                      borderSide: const BorderSide(color: Colors.deepPurple, width: 1.5),
                                    ),
                                    contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),

            // CGPA Display Area
            Container(
              padding: const EdgeInsets.all(20.0),
              margin: const EdgeInsets.only(bottom: 20.0),
              decoration: BoxDecoration(
                color: Colors.deepPurple.shade50,
                borderRadius: BorderRadius.circular(18.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.deepPurple.shade100.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 7,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Text(
                    'Your Overall CGPA:',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey[700],
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    cgpa.toStringAsFixed(2),
                    style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
                      color: Colors.deepPurple,
                    ),
                  ),
                ],
              ),
            ),

            // Action Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: calculateCGPA,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green.shade600,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 14.0),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
                      elevation: 3,
                    ),
                    icon: const Icon(Icons.calculate),
                    label: const Text(
                      'Calculate CGPA',
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                ),
                const SizedBox(width: 15),
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: resetAll,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red.shade500,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 14.0),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
                      elevation: 3,
                    ),
                    icon: const Icon(Icons.refresh),
                    label: const Text(
                      'Reset',
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}