import 'package:flutter/material.dart';
import 'cgpa_page.dart';
import 'semester_page.dart';
import '../data/semester_details.dart';


// Enum to represent the eight semesters
enum Semester { One, Two, Three, Four, Five, Six, Seven, Eight }

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
  // I Initialize the semester data to be reduce the use of constructor
  // and to avoid passing data through constructors.
    final SemData semData = SemData();

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'GPA Calculator',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor, 
        foregroundColor: Colors.white, 
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0), 
        children: [
          const Text(
            'Select Semester:',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.deepPurple, 
            ),
          ),
          const SizedBox(height: 10), 

// Loops for each semester to create a card

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
                      horizontal: 20, vertical: 10), 
                  leading: _getSemesterIcon(
                      Semester.values[i - 1]),
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

          // Here i used Navigate to the SemesterPage with the corresponding subjects

                    switch (Semester.values[i - 1]) {
                      case Semester.One:
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SemesterPage(
                              subjects: semData.sem1Subjects, 
                              title: "Semester 1 GPA Calculator",
                            ),
                          ),
                        );
                        break;
                      case Semester.Two:
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SemesterPage(
                              subjects: semData.sem2Subjects, 
                              title: "Semester 2 GPA Calculator",
                            ),
                          ),
                        );
                        break;
                      case Semester.Three:
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SemesterPage(
                              subjects: semData.sem3Subjects, 
                              title: "Semester 3 GPA Calculator",
                            ),
                          ),
                        );
                        break;
                      case Semester.Four:
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SemesterPage(
                              subjects: semData.sem4Subjects, 
                              title: "Semester 4 GPA Calculator",
                            ),
                          ),
                        );
                        break;
                      case Semester.Five:
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SemesterPage(
                              subjects: semData.sem5Subjects, 
                              title: "Semester 5 GPA Calculator",
                            ),
                          ),
                        );
                        break;
                      case Semester.Six:
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SemesterPage(
                              subjects: semData.sem6Subjects,
                              title: "Semester 6 GPA Calculator",
                            ),
                          ),
                        );
                        break;
                      case Semester.Seven:
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SemesterPage(
                              subjects: semData.sem7Subjects,
                              title: "Semester 7 GPA Calculator",
                            ),
                          ),
                        );
                        break;
                      case Semester.Eight:
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SemesterPage(
                              subjects: semData.sem8Subjects,
                              title: "Semester 8 GPA Calculator",
                            ),
                          ),
                        );
                        break;
                    }
                  },
                ),
              ),
            ),
          const SizedBox(height: 30), 
          const Divider(thickness: 2, height: 40),
          ElevatedButton.icon(
            onPressed: () {

    // Navigate to the CGPA Calculator Page
              // This button is used to calculate the overall CGPA

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
