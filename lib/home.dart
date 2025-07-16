import 'package:flutter/material.dart';
import 'Pages/Sem1.dart';
import 'Pages/Sem2.dart';
import 'Pages/Sem3.dart';
import 'Pages/Sem4.dart';
import 'Pages/Sem5.dart';
import 'Pages/Sem6.dart';
import 'Pages/Sem7.dart';
import 'Pages/Sem8.dart';
import 'Calculations/cgpa_calculate.dart';

enum Semester { One, Two, Three, Four, Five, Six, Seven, Eight }

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('GPA Calculator')),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const Text('Select Semester:', style: TextStyle(fontSize: 20)),
          const SizedBox(height: 20),
          for (int i = 1; i <= Semester.values.length; i++)
            ListTile(
              title: Text('Semester ${Semester.values[i - 1].name}', style: TextStyle(fontSize: 20)),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                switch (Semester.values[i - 1]) {
                  case Semester.One:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Sem1GPA(),
                      ),
                    );
                    break;
                  case Semester.Two:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Sem2GPA(),
                      ),
                    );
                    break;
                  case Semester.Three:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Sem3GPA(),
                      ),
                    );
                    break;
                  case Semester.Four:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Sem4GPA(),
                      ),
                    );
                    break;
                  case Semester.Five:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Sem5GPA(),
                      ),
                    );
                    break;
                  case Semester.Six:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Sem6GPA(),
                      ),
                    );
                    break;
                  case Semester.Seven:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Sem7GPA(),
                      ),
                    );
                    break;
                  case Semester.Eight:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Sem8GPA(),
                      ),
                    );
                    break;
                }
              },
            ),
            const Divider(thickness: 2),
            ListTile(
            title: const Text('CGPA Calculator', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            trailing: const Icon(Icons.calculate),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CGPACalculatorPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}