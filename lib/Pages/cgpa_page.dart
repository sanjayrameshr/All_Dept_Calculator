import 'package:flutter/material.dart';
import '../Calculations/cgpa_calculate.dart';

class CgpaCalculatorPage extends StatefulWidget {
  @override
  _CgpaCalculatorPageState createState() => _CgpaCalculatorPageState();
}

class _CgpaCalculatorPageState extends State<CgpaCalculatorPage> {
  final List<TextEditingController> gpaControllers = [];
  int selectedSemesters = 0;
  double cgpa = 0.0;      

  @override
  void dispose() {
    for (var controller in gpaControllers) {
      controller.dispose();
    }
    super.dispose();
  }

  void calculateCGPA() {
    final gpaInputs =
        gpaControllers.map((controller) => controller.text).toList();

    try {

      final result = CgpaCalculator.calculate(gpaInputs: gpaInputs);
      setState(() {
        cgpa = result;
      });
    } on ArgumentError catch (e) {
      setState(() {
        cgpa = 0.0;
      });
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(e.message), 
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  void resetAll() {
    setState(() {
      selectedSemesters = 0;
      for (var controller in gpaControllers) {
        controller.dispose();
      }
      gpaControllers.clear();
      cgpa = 0.0;
    });
  }

  void updateSemesters(int count) {
    for (var controller in gpaControllers) {
      controller.dispose();
    }
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
      appBar: AppBar(
        title: const Text('CGPA Calculator',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.deepPurple,
        elevation: 4,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
          
            Card(
              margin: const EdgeInsets.only(bottom: 20.0),
              elevation: 3,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0)),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 16.0, vertical: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Select Number of Completed Semesters:",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.deepPurple),
                    ),
                    const SizedBox(height: 10),
                    DropdownButtonFormField<int>(
                      value: selectedSemesters > 0 ? selectedSemesters : null,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide:
                              BorderSide(color: Colors.deepPurple.shade200),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide:
                              BorderSide(color: Colors.deepPurple.shade200),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: const BorderSide(
                              color: Colors.deepPurple, width: 2.0),
                        ),
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                        hintText: "Choose Semesters",
                        hintStyle: TextStyle(color: Colors.grey[500]),
                      ),
                      icon: const Icon(Icons.arrow_drop_down,
                          color: Colors.deepPurple),
                      items: List.generate(8, (index) => index + 1)
                          .map((int value) => DropdownMenuItem(
                                value: value,
                                child: Text(
                                    "$value Semester${value > 1 ? 's' : ''}"),
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

            Expanded(
              child: ListView.builder(
                itemCount: selectedSemesters,
                itemBuilder: (context, index) {
                  return Card(
                    margin: const EdgeInsets.symmetric(vertical: 6.0),
                    elevation: 1.5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        children: [
                          Icon(Icons.school,
                              color: Colors.deepPurple.shade300),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Semester ${index + 1} (Credits: ${CgpaCalculator.semesterCredits[index]})',
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Colors.deepPurple),
                                ),
                                const SizedBox(height: 5),
                                TextField(
                                  controller: gpaControllers[index],
                                  keyboardType:
                                      const TextInputType.numberWithOptions(
                                          decimal: true),
                                  decoration: InputDecoration(
                                    labelText: 'Enter GPA',
                                    hintText: 'e.g., 8.5',
                                    labelStyle:
                                        TextStyle(color: Colors.grey[700]),
                                    border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.circular(8.0),
                                      borderSide: BorderSide(
                                          color: Colors.grey.shade300),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.circular(8.0),
                                      borderSide: const BorderSide(
                                          color: Colors.deepPurple,
                                          width: 1.5),
                                    ),
                                    contentPadding:
                                        const EdgeInsets.symmetric(
                                            horizontal: 12, vertical: 8),
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
            if (cgpa > 0.0)
              Container(
                padding: const EdgeInsets.all(10.0),
                margin: const EdgeInsets.only(bottom: 15.0),
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
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      cgpa.toStringAsFixed(2),
                      style: const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w900,
                          color: Colors.deepPurple),
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
                      padding:
                          const EdgeInsets.symmetric(vertical: 14.0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0)),
                      elevation: 3,
                    ),
                    icon: const Icon(Icons.calculate),
                    label: const Text('Calculate CGPA',
                        style: TextStyle(fontSize: 17)),
                  ),
                ),
                const SizedBox(width: 15),
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: resetAll,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red.shade500,
                      foregroundColor: Colors.white,
                      padding:
                          const EdgeInsets.symmetric(vertical: 14.0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0)),
                      elevation: 3,
                    ),
                    icon: const Icon(Icons.refresh),
                    label: const Text('Reset', style: TextStyle(fontSize: 17)),
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