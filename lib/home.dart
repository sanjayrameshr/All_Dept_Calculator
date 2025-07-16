import 'package:flutter/material.dart';

// Import your semester pages and CGPA calculator page
import 'Pages/Sem1.dart';
import 'Pages/Sem2.dart';
import 'Pages/Sem3.dart';
import 'Pages/Sem4.dart';
import 'Pages/Sem5.dart';
import 'Pages/Sem6.dart';
import 'Pages/Sem7.dart';
import 'Pages/Sem8.dart';
import 'Calculations/cgpa_calculate.dart';

// Enum to represent the eight semesters
enum Semester { One, Two, Three, Four, Five, Six, Seven, Eight }

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'GPA Calculator',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor, // Uses the primary color from main.dart's theme
        foregroundColor: Colors.white, // Ensures text is white for contrast
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0), // Padding around the entire list
        children: [
          const Text(
            'Select Semester:',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.deepPurple, // Custom color for this heading
            ),
          ),
          const SizedBox(height: 10), // Space after the heading

          // Loop through all semesters to create a card for each
          for (int i = 1; i <= Semester.values.length; i++)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0), // Vertical padding between cards
              child: Card(
                elevation: 4, // Adds a shadow effect to the card
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12), // Rounded corners for the card
                ),
                child: ListTile(
                  contentPadding: const EdgeInsets.symmetric(
                      horizontal: 20, vertical: 10), // Padding inside the ListTile
                  leading: _getSemesterIcon(
                      Semester.values[i - 1]), // Dynamic icon based on semester
                  title: Text(
                    'Semester ${Semester.values[i - 1].name}',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios, // Arrow icon on the right
                    color: Colors.grey,
                    size: 20,
                  ),
                  onTap: () {
                    // Navigation logic based on the selected semester
                    switch (Semester.values[i - 1]) {
                      case Semester.One:
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Sem1GPA(), // Navigate to Sem1GPA page
                          ),
                        );
                        break;
                      case Semester.Two:
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Sem2GPA(), // Navigate to Sem2GPA page
                          ),
                        );
                        break;
                      case Semester.Three:
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Sem3GPA(), // Navigate to Sem3GPA page
                          ),
                        );
                        break;
                      case Semester.Four:
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Sem4GPA(), // Navigate to Sem4GPA page
                          ),
                        );
                        break;
                      case Semester.Five:
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Sem5GPA(), // Navigate to Sem5GPA page
                          ),
                        );
                        break;
                      case Semester.Six:
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Sem6GPA(), // Navigate to Sem6GPA page
                          ),
                        );
                        break;
                      case Semester.Seven:
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Sem7GPA(), // Navigate to Sem7GPA page
                          ),
                        );
                        break;
                      case Semester.Eight:
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Sem8GPA(), // Navigate to Sem8GPA page
                          ),
                        );
                        break;
                    }
                  },
                ),
              ),
            ),
          const SizedBox(height: 30), // More space before the CGPA button
          const Divider(thickness: 2, height: 40), // A prominent divider
          ElevatedButton.icon(
            onPressed: () {
              // Navigate to the CGPA Calculator page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CGPACalculatorPage()),
              );
            },
            icon: const Icon(Icons.calculate, size: 28), // Calculator icon
            label: const Text(
              'Calculate Overall CGPA',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            style: ElevatedButton.styleFrom(
              minimumSize: const Size.fromHeight(60), // Makes the button taller
              backgroundColor: Colors.green, // Distinct background color for the button
              foregroundColor: Colors.white, // Text color for the button
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12), // Rounded corners for the button
              ),
              elevation: 5, // Shadow for the button
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
        return const Icon(Icons.filter_2_rounded, color: Colors.orange, size: 30);
      case Semester.Three:
        return const Icon(Icons.filter_3_rounded, color: Colors.green, size: 30);
      case Semester.Four:
        return const Icon(Icons.filter_4_rounded, color: Colors.red, size: 30);
      case Semester.Five:
        return const Icon(Icons.filter_5_rounded, color: Colors.purple, size: 30);
      case Semester.Six:
        return const Icon(Icons.filter_6_rounded, color: Colors.teal, size: 30);
      case Semester.Seven:
        return const Icon(Icons.filter_7_rounded, color: Colors.indigo, size: 30);
      case Semester.Eight:
        return const Icon(Icons.filter_8_rounded, color: Colors.brown, size: 30);
    }
  }
}
