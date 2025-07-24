import 'subject_details.dart';
import 'package:flutter/material.dart';

class DepartmentSubjects {
  final List<Subjects> sem1;
  final List<Subjects> sem2;
  final List<Subjects> sem3;
  final List<Subjects> sem4;
  final List<Subjects> sem5;
  final List<Subjects> sem6;
  final List<Subjects> sem7;
  final List<Subjects> sem8;

  DepartmentSubjects({
    required this.sem1,
    required this.sem2,
    required this.sem3,
    required this.sem4,
    required this.sem5,
    required this.sem6,
    required this.sem7,
    required this.sem8,
  });

  List<Subjects> getSubjectsForSemester(int semester) {
    switch (semester) {
      case 1:
        return sem1;
      case 2:
        return sem2;
      case 3:
        return sem3;
      case 4:
        return sem4;
      case 5:
        return sem5;
      case 6:
        return sem6;
      case 7:
        return sem7;
      case 8:
        return sem8;
      default:
        return [];
    }
  }
}

final Map<String, DepartmentSubjects> departmentData = {
  "EEE": DepartmentSubjects(
    sem1: [
      Subjects(name: "Professional English - I", code: "HS3151", credit: 3),
      Subjects(name: "Matrices and Calculus", code: "MA3151", credit: 4),
      Subjects(name: "Engineering Physics", code: "PH3151", credit: 3),
      Subjects(name: "Engineering Chemistry", code: "CY3151", credit: 3),
      Subjects(
        name: "Problem Solving and Python Programming",
        code: "GE3151",
        credit: 3,
      ),
      Subjects(name: "Heritage of Tamils", code: "GE3152", credit: 1),
      Subjects(
        name: "Problem Solving and Python Programming Laboratory",
        code: "GE3171",
        credit: 2,
      ),
      Subjects(
        name: "Physics and Chemistry Laboratory",
        code: "BS3171",
        credit: 2,
      ),
      Subjects(name: "English Laboratory", code: "GE3172", credit: 1),
    ],
    sem2: [
      Subjects(name: "Professional English - II", code: "HS3251", credit: 2),
      Subjects(
        name: "Statistics and Numerical Methods",
        code: "MA3251",
        credit: 4,
      ),
      Subjects(
        name: "Physics for Electrical Engineering",
        code: "PH3202",
        credit: 3,
      ),
      Subjects(
        name: "Basic Civil and Mechanical Engineering",
        code: "BE3255",
        credit: 3,
      ),
      Subjects(name: "Engineering Graphics", code: "GE3251", credit: 4),
      Subjects(name: "Electric Circuit Analysis", code: "EE3251", credit: 4),
      Subjects(name: "Tamils and Technology", code: "GE3252", credit: 1),
      Subjects(
        name: "Engineering Practices Laboratory",
        code: "GE3271",
        credit: 2,
      ),
      Subjects(name: "Electric Circuits Laboratory", code: "EE3271", credit: 2),
      Subjects(
        name: "Communication Laboratory / Foreign Language",
        code: "GE3272",
        credit: 2,
      ),
      // Note: NCC Credit Course Level 1 is optional and not included in CGPA.
    ],
    sem3: [
      Subjects(
        name: "Probability and Complex Functions",
        code: "MA3303",
        credit: 4,
      ),
      Subjects(name: "Electromagnetic Fields", code: "EE3301", credit: 4),
      Subjects(name: "Digital Logic Circuits", code: "EE3302", credit: 3),
      Subjects(
        name: "Electron Devices and Circuits",
        code: "EC3301",
        credit: 3,
      ),
      Subjects(name: "Electrical Machines - I", code: "EE3303", credit: 3),
      Subjects(
        name: "C Programming and Data Structures",
        code: "CS3353",
        credit: 3,
      ),
      Subjects(
        name: "Electronic Devices and Circuits Laboratory",
        code: "EC3311",
        credit: 1.5,
      ),
      Subjects(
        name: "Electrical Machines Laboratory - 1",
        code: "EE3311",
        credit: 1.5,
      ),
      Subjects(
        name: "C Programming and Data Structures Laboratory",
        code: "CS3362",
        credit: 1.5,
      ),
      Subjects(name: "Professional Development", code: "GE3361", credit: 1),
    ],
    sem4: [
      Subjects(
        name: "Environmental Sciences and Sustainability",
        code: "GE3451",
        credit: 2,
      ),
      Subjects(
        name: "Transmission and Distribution",
        code: "EE3401",
        credit: 3,
      ),
      Subjects(name: "Linear Integrated Circuits", code: "EE3402", credit: 3),
      Subjects(
        name: "Measurements and Instrumentation",
        code: "EE3403",
        credit: 3,
      ),
      Subjects(
        name: "Microprocessor and Microcontroller",
        code: "EE3404",
        credit: 3,
      ),
      Subjects(name: "Electrical Machines - II", code: "EE3405", credit: 3),
      Subjects(
        name: "Electrical Machines Laboratory - II",
        code: "EE3411",
        credit: 1.5,
      ),
      Subjects(
        name: "Linear and Digital Circuits Laboratory",
        code: "EE3412",
        credit: 1.5,
      ),
      Subjects(
        name: "Microprocessor and Microcontroller laboratory",
        code: "EE3413",
        credit: 1.5,
      ),
      // Note: NCC Credit Course Level 2 is optional and not included in CGPA.
    ],
    sem5: [
      Subjects(name: "Power System Analysis", code: "EE3501", credit: 3),
      Subjects(name: "Power Electronics", code: "EE3591", credit: 3),
      Subjects(name: "Control Systems", code: "EE3503", credit: 3),
      Subjects(name: "Professional Elective I", code: "PEC", credit: 3),
      Subjects(name: "Professional Elective II", code: "PEC", credit: 3),
      Subjects(name: "Professional Elective III", code: "PEC", credit: 3),
      Subjects(
        name: "Power Electronics Laboratory",
        code: "EE3511",
        credit: 1.5,
      ),
      Subjects(
        name: "Control and Instrumentation Laboratory",
        code: "EE3512",
        credit: 2,
      ),
      // Note: Mandatory Course-I is a non-credit course.
    ],
    sem6: [
      Subjects(name: "Protection and Switchgear", code: "EE3601", credit: 3),
      Subjects(
        name: "Power System Operation and Control",
        code: "EE3602",
        credit: 3,
      ),
      Subjects(name: "Open Elective - I", code: "OEC", credit: 3),
      Subjects(name: "Professional Elective IV", code: "PEC", credit: 3),
      Subjects(name: "Professional Elective V", code: "PEC", credit: 3),
      Subjects(name: "Professional Elective VI", code: "PEC", credit: 3),
      Subjects(name: "Power System Laboratory", code: "EE3611", credit: 1.5),
      // Note: Mandatory Course-II is a non-credit course.
      // Note: NCC Credit Course Level 3 is optional and not included in CGPA.
    ],
    sem7: [
      // This semester can be interchanged with Semester 8.
      Subjects(name: "High Voltage Engineering", code: "EE3701", credit: 3),
      Subjects(name: "Human Values and Ethics", code: "GE3791", credit: 2),
      Subjects(name: "Elective - Management", code: "HSMC", credit: 3),
      Subjects(name: "Open Elective - II", code: "OEC", credit: 3),
      Subjects(name: "Open Elective - III", code: "OEC", credit: 3),
      Subjects(name: "Open Elective - IV", code: "OEC", credit: 3),
      Subjects(name: "Professional Elective VII", code: "PEC", credit: 3),
    ],
    sem8: [
      // This semester can be interchanged with Semester 7.
      Subjects(name: "Project Work / Internship", code: "EE3811", credit: 10),
    ],
  ),
  "ECE": DepartmentSubjects(
    sem1: [
      Subjects(name: "Professional English - I", code: "HS3152", credit: 3),
      Subjects(name: "Matrices and Calculus", code: "MA3151", credit: 4),
      Subjects(name: "Engineering Physics", code: "PH3151", credit: 3),
      Subjects(name: "Engineering Chemistry", code: "CY3151", credit: 3),
      Subjects(
        name: "Problem Solving and Python Programming",
        code: "GE3151",
        credit: 3,
      ),
      Subjects(name: "Heritage of Tamils", code: "GE3152", credit: 1),
      Subjects(
        name: "Problem Solving and Python Programming Laboratory",
        code: "GE3171",
        credit: 2,
      ),
      Subjects(
        name: "Physics and Chemistry Laboratory",
        code: "BS3171",
        credit: 2,
      ),
      Subjects(name: "English Laboratory", code: "GE3172", credit: 1),
    ],
    sem2: [
      Subjects(code: 'HS3252', name: 'Professional English - II', credit: 2.0),
      Subjects(
        code: 'MA3251',
        name: 'Statistics and Numerical Methods',
        credit: 4.0,
      ),
      Subjects(
        code: 'PH3254',
        name: 'Physics for Electronics Engineering',
        credit: 3.0,
      ),
      Subjects(
        code: 'BE3254',
        name: 'Electrical and Instrumentation Engineering',
        credit: 3.0,
      ),
      Subjects(code: 'GE3251', name: 'Engineering Graphics', credit: 4.0),
      Subjects(code: 'EC3251', name: 'Circuit Analysis', credit: 4.0),
      Subjects(code: 'GE3252', name: 'Tamils and Technology', credit: 1.0),
      Subjects(
        code: 'GE3271',
        name: 'Engineering Practices Laboratory',
        credit: 2.0,
      ),
      Subjects(
        code: 'EC3271',
        name: 'Circuits Analysis Laboratory',
        credit: 1.0,
      ),
      Subjects(
        code: 'GE3272',
        name: 'Communication Laboratory / Foreign Language',
        credit: 2.0,
      ),
      // Note: NCC Credit Course is optional and not included in CGPA
    ],

    sem3: [
      Subjects(
        code: 'MA3355',
        name: 'Random Processes and Linear Algebra',
        credit: 4.0,
      ),
      Subjects(
        code: 'CS3353',
        name: 'C Programming and Data Structures',
        credit: 3.0,
      ),
      Subjects(code: 'EC3354', name: 'Signals and Systems', credit: 4.0),
      Subjects(
        code: 'EC3353',
        name: 'Electronic Devices and Circuits',
        credit: 3.0,
      ),
      Subjects(code: 'EC3351', name: 'Control Systems', credit: 3.0),
      Subjects(code: 'EC3352', name: 'Digital Systems Design', credit: 4.0),
      Subjects(
        code: 'EC3361',
        name: 'Electronic Devices and Circuits Laboratory',
        credit: 1.5,
      ),
      Subjects(
        code: 'CS3362',
        name: 'C Programming and Data Structures Laboratory',
        credit: 1.5,
      ),
      Subjects(code: 'GE3361', name: 'Professional Development', credit: 1.0),
    ],

    sem4: [
      Subjects(code: 'EC3452', name: 'Electromagnetic Fields', credit: 3.0),
      Subjects(code: 'EC3401', name: 'Networks and Security', credit: 4.0),
      Subjects(code: 'EC3451', name: 'Linear Integrated Circuits', credit: 3.0),
      Subjects(code: 'EC3492', name: 'Digital Signal Processing', credit: 4.0),
      Subjects(code: 'EC3491', name: 'Communication Systems', credit: 3.0),
      Subjects(
        code: 'GE3451',
        name: 'Environmental Sciences and Sustainability',
        credit: 2.0,
      ),
      Subjects(
        code: 'EC3461',
        name: 'Communication Systems Laboratory',
        credit: 1.5,
      ),
      Subjects(
        code: 'EC3462',
        name: 'Linear Integrated Circuits Laboratory',
        credit: 1.5,
      ),
      // Note: NCC Credit Course is optional and not included in CGPA
    ],

    sem5: [
      Subjects(code: 'EC3501', name: 'Wireless Communication', credit: 4.0),
      Subjects(code: 'EC3552', name: 'VLSI and Chip Design', credit: 3.0),
      Subjects(
        code: 'EC3551',
        name: 'Transmission lines and RF Systems',
        credit: 3.0,
      ),
      Subjects(code: 'PEC', name: 'Professional Elective I', credit: 3.0),
      Subjects(code: 'PEC', name: 'Professional Elective II', credit: 3.0),
      Subjects(code: 'PEC', name: 'Professional Elective III', credit: 3.0),
      Subjects(code: 'EC3561', name: 'VLSI Laboratory', credit: 2.0),
      // Note: Mandatory Course-I is a non-credit course.
    ],

    sem6: [
      Subjects(
        code: 'ET3491',
        name: 'Embedded Systems and IOT Design',
        credit: 4.0,
      ),
      Subjects(
        code: 'CS3491',
        name: 'Artificial Intelligence and Machine Learning',
        credit: 4.0,
      ),
      Subjects(code: 'OEC', name: 'Open Elective- I', credit: 3.0),
      Subjects(code: 'PEC', name: 'Professional Elective IV', credit: 3.0),
      Subjects(code: 'PEC', name: 'Professional Elective V', credit: 3.0),
      Subjects(code: 'PEC', name: 'Professional Elective VI', credit: 3.0),
      // Note: Mandatory Course-II is a non-credit course.
      // Note: NCC Credit Course is optional and not included in CGPA
    ],

    sem7: [
      Subjects(code: 'GE3791', name: 'Human Values and Ethics', credit: 2.0),
      Subjects(code: 'HSMC', name: 'Elective - Management', credit: 3.0),
      Subjects(code: 'OEC', name: 'Open Elective - II', credit: 3.0),
      Subjects(code: 'OEC', name: 'Open Elective - III', credit: 3.0),
      Subjects(code: 'OEC', name: 'Open Elective - IV', credit: 3.0),
      Subjects(code: 'EC3711', name: 'Summer internship', credit: 2.0),
    ],

    sem8: [
      Subjects(code: 'EC3811', name: 'Project Work / Internship', credit: 10.0),
    ],
  ),
  "CSE": DepartmentSubjects(
    sem1: [
      Subjects(name: "Professional English - I", code: "HS3152", credit: 3),
      Subjects(name: "Matrices and Calculus", code: "MA3151", credit: 4),
      Subjects(name: "Engineering Physics", code: "PH3151", credit: 3),
      Subjects(name: "Engineering Chemistry", code: "CY3151", credit: 3),
      Subjects(
        name: "Problem Solving and Python Programming",
        code: "GE3151",
        credit: 3,
      ),
      Subjects(name: "Heritage of Tamils", code: "GE3152", credit: 1),
      Subjects(
        name: "Problem Solving and Python Programming Laboratory",
        code: "GE3171",
        credit: 2,
      ),
      Subjects(
        name: "Physics and Chemistry Laboratory",
        code: "BS3171",
        credit: 2,
      ),
      Subjects(name: "English Laboratory", code: "GE3172", credit: 1),
    ],
    sem2: [
      Subjects(name: "Professional English - II", code: "HS3252", credit: 2),
      Subjects(
        name: "Statistics and Numerical Methods",
        code: "MA3251",
        credit: 4,
      ),
      Subjects(
        name: "Physics for Information Science",
        code: "PH3256",
        credit: 3,
      ),
      Subjects(
        name: "Basic Electrical and Electronics Engineering",
        code: "BE3251",
        credit: 3,
      ),
      Subjects(name: "Engineering Graphics", code: "GE3251", credit: 4),
      Subjects(name: "Programming in C", code: "CS3251", credit: 3),
      Subjects(name: "Tamils and Technology", code: "GE3252", credit: 1),
      Subjects(
        name: "Engineering Practices Laboratory",
        code: "GE3271",
        credit: 2,
      ),
      Subjects(name: "Programming in C Laboratory", code: "CS3271", credit: 2),
      Subjects(
        name: "Communication Laboratory / Foreign Language",
        code: "GE3272",
        credit: 2,
      ),
    ],
    sem3: [
      Subjects(name: "Discrete Mathematics", code: "MA3354", credit: 4),
      Subjects(
        name: "Digital Principles and Computer Organization",
        code: "CS3351",
        credit: 4,
      ),
      Subjects(name: "Foundations of Data Science", code: "CS3352", credit: 3),
      Subjects(name: "Data Structures", code: "CS3301", credit: 3),
      Subjects(name: "Object Oriented Programming", code: "CS3391", credit: 3),
      Subjects(name: "Data Structures Laboratory", code: "CS3311", credit: 1.5),
      Subjects(
        name: "Object Oriented Programming Laboratory",
        code: "CS3381",
        credit: 1.5,
      ),
      Subjects(name: "Data Science Laboratory", code: "CS3361", credit: 2),
      Subjects(name: "Professional Development", code: "GE3361", credit: 1),
    ],
    sem4: [
      Subjects(name: "Theory of Computation", code: "CS3452", credit: 3),
      Subjects(
        name: "Artificial Intelligence and Machine Learning",
        code: "CS3491",
        credit: 4,
      ),
      Subjects(name: "Database Management Systems", code: "CS3492", credit: 3),
      Subjects(name: "Algorithms", code: "CS3401", credit: 4),
      Subjects(
        name: "Introduction to Operating Systems",
        code: "CS3451",
        credit: 3,
      ),
      Subjects(
        name: "Environmental Sciences and Sustainability",
        code: "GE3451",
        credit: 2,
      ),
      Subjects(
        name: "Operating Systems Laboratory",
        code: "CS3461",
        credit: 1.5,
      ),
      Subjects(
        name: "Database Management Systems Laboratory",
        code: "CS3481",
        credit: 1.5,
      ),
    ],
    sem5: [
      Subjects(name: "Computer Networks", code: "CS3591", credit: 4),
      Subjects(name: "Compiler Design", code: "CS3501", credit: 4),
      Subjects(
        name: "Cryptography and Cyber Security",
        code: "CB3491",
        credit: 3,
      ),
      Subjects(name: "Distributed Computing", code: "CS3551", credit: 3),
      Subjects(name: "Professional Elective I", code: "PEC", credit: 3),
      Subjects(name: "Professional Elective II", code: "PEC", credit: 3),
    ],
    sem6: [
      Subjects(
        name: "Object Oriented Software Engineering",
        code: "CCS356",
        credit: 4,
      ),
      Subjects(name: "Embedded Systems and loT", code: "CS3691", credit: 4),
      Subjects(name: "Open Elective - I", code: "OEC", credit: 3),
      Subjects(name: "Professional Elective III", code: "PEC", credit: 3),
      Subjects(name: "Professional Elective IV", code: "PEC", credit: 3),
      Subjects(name: "Professional Elective V", code: "PEC", credit: 3),
      Subjects(name: "Professional Elective VI", code: "PEC", credit: 3),
    ],
    sem7: [
      Subjects(name: "Human Values and Ethics", code: "GE3791", credit: 2),
      Subjects(name: "Elective - Management", code: "HSMC", credit: 3),
      Subjects(name: "Open Elective - II", code: "OEC", credit: 3),
      Subjects(name: "Open Elective - III", code: "OEC", credit: 3),
      Subjects(name: "Open Elective - IV", code: "OEC", credit: 3),
      Subjects(name: "Summer internship", code: "CS3711", credit: 2),
    ],
    sem8: [
      Subjects(name: "Project Work/Internship", code: "CS3811", credit: 10),
    ],
  ),
  "AIDS": DepartmentSubjects(
    sem1: [
      Subjects(name: "Professional English - I", code: "HS3152", credit: 3),
      Subjects(name: "Matrices and Calculus", code: "MA3151", credit: 4),
      Subjects(name: "Engineering Physics", code: "PH3151", credit: 3),
      Subjects(name: "Engineering Chemistry", code: "CY3151", credit: 3),
      Subjects(
        name: "Problem Solving and Python Programming",
        code: "GE3151",
        credit: 3,
      ),
      Subjects(name: "Heritage of Tamils", code: "GE3152", credit: 1),
      Subjects(
        name: "Problem Solving and Python Programming Laboratory",
        code: "GE3171",
        credit: 2,
      ),
      Subjects(
        name: "Physics and Chemistry Laboratory",
        code: "BS3171",
        credit: 2,
      ),
      Subjects(name: "English Laboratory", code: "GE3172", credit: 1),
    ],
    sem2: [
      Subjects(name: "Professional English - II", code: "HS3252", credit: 2),
      Subjects(
        name: "Statistics and Numerical Methods",
        code: "MA3251",
        credit: 4,
      ),
      Subjects(
        name: "Physics for Information Science",
        code: "PH3256",
        credit: 3,
      ),
      Subjects(
        name: "Basic Electrical and Electronics Engineering",
        code: "BE3251",
        credit: 3,
      ),
      Subjects(name: "Engineering Graphics", code: "GE3251", credit: 4),
      Subjects(name: "Data Structures Design", code: "AD3251", credit: 3),
      Subjects(name: "Tamils and Technology", code: "GE3252", credit: 1),
      Subjects(
        name: "Engineering Practices Laboratory",
        code: "GE3271",
        credit: 2,
      ),
      Subjects(
        name: "Data Structures Design Laboratory",
        code: "AD3271",
        credit: 2,
      ),
      Subjects(
        name: "Communication Laboratory / Foreign Language",
        code: "GE3272",
        credit: 2,
      ),
      // Note: NCC Credit Course Level 1 is optional and not included in CGPA.
    ],
    sem3: [
      Subjects(name: "Discrete Mathematics", code: "MA3354", credit: 4),
      Subjects(
        name: "Digital Principles and Computer Organization",
        code: "CS3351",
        credit: 4,
      ),
      Subjects(
        name: "Database Design and Management",
        code: "AD3391",
        credit: 3,
      ),
      Subjects(
        name: "Design and Analysis of Algorithms",
        code: "AD3351",
        credit: 4,
      ),
      Subjects(
        name: "Data Exploration and Visualization",
        code: "AD3301",
        credit: 4,
      ),
      Subjects(name: "Artificial Intelligence", code: "AL3391", credit: 3),
      Subjects(
        name: "Database Design and Management Laboratory",
        code: "AD3381",
        credit: 1.5,
      ),
      Subjects(
        name: "Artificial Intelligence Laboratory",
        code: "AD3311",
        credit: 1.5,
      ),
      Subjects(name: "Professional Development", code: "GE3361", credit: 1),
    ],
    sem4: [
      Subjects(name: "Probability and Statistics", code: "MA3391", credit: 4),
      Subjects(name: "Operating Systems", code: "AL3452", credit: 4),
      Subjects(name: "Machine Learning", code: "AL3451", credit: 3),
      Subjects(
        name: "Fundamentals of Data Science and Analytics",
        code: "AD3491",
        credit: 3,
      ),
      Subjects(name: "Computer Networks", code: "CS3591", credit: 4),
      Subjects(
        name: "Environmental Sciences and Sustainability",
        code: "GE3451",
        credit: 2,
      ),
      Subjects(
        name: "Data Science and Analytics Laboratory",
        code: "AD3411",
        credit: 2,
      ),
      Subjects(name: "Machine Learning Laboratory", code: "AD3461", credit: 2),
      // Note: NCC Credit Course level 2 is optional and not included in CGPA.
    ],
    sem5: [
      Subjects(name: "Deep Learning", code: "AD3501", credit: 3),
      Subjects(
        name: "Data and Information Security",
        code: "CW3551",
        credit: 3,
      ),
      Subjects(name: "Distributed Computing", code: "CS3551", credit: 3),
      Subjects(name: "Big Data Analytics", code: "CCS334", credit: 3),
      Subjects(name: "Professional Elective I", code: "PEC", credit: 3),
      Subjects(name: "Professional Elective II", code: "PEC", credit: 3),
      Subjects(name: "Deep Learning Laboratory", code: "AD3511", credit: 2),
      Subjects(name: "Summer internship", code: "AD3512", credit: 2),
      // Note: Mandatory Course-I is a non-credit course.
    ],
    sem6: [
      Subjects(name: "Embedded Systems and loT", code: "CS3691", credit: 4),
      Subjects(name: "Open Elective - I", code: "OEC", credit: 3),
      Subjects(name: "Professional Elective III", code: "PEC", credit: 3),
      Subjects(name: "Professional Elective IV", code: "PEC", credit: 3),
      Subjects(name: "Professional Elective V", code: "PEC", credit: 3),
      Subjects(name: "Professional Elective VI", code: "PEC", credit: 3),
      // Note: Mandatory Course-II is a non-credit course.
      // Note: NCC Credit Course Level 3 is optional and not included in CGPA.
    ],
    sem7: [
      // Note: This semester can be interchanged with Semester 8.
      Subjects(name: "Human Values and Ethics", code: "GE3791", credit: 2),
      Subjects(name: "Elective - Management", code: "HSMC", credit: 3),
      Subjects(name: "Open Elective - II", code: "OEC", credit: 3),
      Subjects(name: "Open Elective - III", code: "OEC", credit: 3),
      Subjects(name: "Open Elective - IV", code: "OEC", credit: 3),
    ],
    sem8: [
      // Note: This semester can be interchanged with Semester 7.
      Subjects(name: "Project Work / Internship", code: "AD3811", credit: 10),
    ],
  ),
  "MECH": DepartmentSubjects(
    sem1: [
      Subjects(name: "Professional English - I", code: "HS3152", credit: 3),
      Subjects(name: "Matrices and Calculus", code: "MA3151", credit: 4),
      Subjects(name: "Engineering Physics", code: "PH3151", credit: 3),
      Subjects(name: "Engineering Chemistry", code: "CY3151", credit: 3),
      Subjects(
        name: "Problem Solving and Python Programming",
        code: "GE3151",
        credit: 3,
      ),
      Subjects(name: "Heritage of Tamils", code: "GE3152", credit: 1),
      Subjects(
        name: "Problem Solving and Python Programming Laboratory",
        code: "GE3171",
        credit: 2,
      ),
      Subjects(
        name: "Physics and Chemistry Laboratory",
        code: "BS3171",
        credit: 2,
      ),
      Subjects(name: "English Laboratory", code: "GE3172", credit: 1),
    ],
    sem2: [
      Subjects(name: "Professional English - II", code: "HS3252", credit: 2),
      Subjects(
        name: "Statistics and Numerical Methods",
        code: "MA3251",
        credit: 4,
      ),
      Subjects(name: "Materials Science", code: "PH3251", credit: 3),
      Subjects(
        name: "Basic Electrical and Electronics Engineering",
        code: "BE3251",
        credit: 3,
      ),
      Subjects(name: "Engineering Graphics", code: "GE3251", credit: 4),
      Subjects(name: "Tamils and Technology", code: "GE3252", credit: 1),
      Subjects(
        name: "Engineering Practices Laboratory",
        code: "GE3271",
        credit: 2,
      ),
      Subjects(
        name: "Basic Electrical and Electronics Engineering Laboratory",
        code: "BE3271",
        credit: 2,
      ),
      Subjects(
        name: "Communication Laboratory / Foreign Language",
        code: "GE3272",
        credit: 2,
      ),
      // Note: NCC Credit Course Level 1 is optional and not included in CGPA.
    ],
    sem3: [
      Subjects(
        name: "Transforms and Partial Differential Equations",
        code: "MA3351",
        credit: 4,
      ),
      Subjects(name: "Engineering Mechanics", code: "ME3351", credit: 3),
      Subjects(name: "Engineering Thermodynamics", code: "ME3391", credit: 3),
      Subjects(
        name: "Fluid Mechanics and Machinery",
        code: "CE3391",
        credit: 4,
      ),
      Subjects(
        name: "Engineering Materials and Metallurgy",
        code: "ME3392",
        credit: 3,
      ),
      Subjects(name: "Manufacturing Processes", code: "ME3393", credit: 3),
      Subjects(
        name: "Computer Aided Machine Drawing",
        code: "ME3381",
        credit: 2,
      ),
      Subjects(
        name: "Manufacturing Technology Laboratory",
        code: "ME3382",
        credit: 2,
      ),
      Subjects(name: "Professional Development", code: "GE3361", credit: 1),
    ],
    sem4: [
      Subjects(name: "Theory of Machines", code: "ME3491", credit: 3),
      Subjects(name: "Thermal Engineering", code: "ME3451", credit: 4),
      Subjects(name: "Hydraulics and Pneumatics", code: "ME3492", credit: 3),
      Subjects(name: "Manufacturing Technology", code: "ME3493", credit: 3),
      Subjects(name: "Strength of Materials", code: "CE3491", credit: 3),
      Subjects(
        name: "Environmental Sciences and Sustainability",
        code: "GE3451",
        credit: 2,
      ),
      Subjects(
        name: "Strength of Materials and Fluid Machinery Laboratory",
        code: "CE3481",
        credit: 2,
      ),
      Subjects(
        name: "Thermal Engineering Laboratory",
        code: "ME3461",
        credit: 2,
      ),
      // Note: NCC Credit Course level 2 is optional and not included in CGPA.
    ],
    sem5: [
      Subjects(name: "Design of Machine Elements", code: "ME3591", credit: 4),
      Subjects(name: "Metrology and Measurements", code: "ME3592", credit: 3),
      Subjects(name: "Professional Elective I", code: "PEC", credit: 3),
      Subjects(name: "Professional Elective II", code: "PEC", credit: 3),
      Subjects(name: "Professional Elective III", code: "PEC", credit: 3),
      Subjects(name: "Summer Internship", code: "ME3511", credit: 1),
      Subjects(
        name: "Metrology and Dynamics Laboratory",
        code: "ME3581",
        credit: 2,
      ),
      // Note: Mandatory Course-I is a non-credit course.
    ],
    sem6: [
      Subjects(name: "Heat and Mass Transfer", code: "ME3691", credit: 4),
      Subjects(name: "Professional Elective IV", code: "PEC", credit: 3),
      Subjects(name: "Professional Elective V", code: "PEC", credit: 3),
      Subjects(name: "Professional Elective VI", code: "PEC", credit: 3),
      Subjects(name: "Professional Elective VII", code: "PEC", credit: 3),
      Subjects(name: "Open Elective - I", code: "OEC", credit: 3),
      Subjects(name: "CAD/CAM Laboratory", code: "ME3681", credit: 2),
      Subjects(name: "Heat Transfer Laboratory", code: "ME3682", credit: 2),
      // Note: Mandatory Course-II is a non-credit course.
      // Note: NCC Credit Course Level 3 is optional and not included in CGPA.
    ],
    sem7: [
      // Note: This semester can be interchanged with Semester 8.
      Subjects(name: "Mechatronics and loT", code: "ME3791", credit: 3),
      Subjects(
        name: "Computer Integrated Manufacturing",
        code: "ME3792",
        credit: 3,
      ),
      Subjects(name: "Human Values and Ethics", code: "GE3791", credit: 2),
      Subjects(name: "Industrial Management", code: "GE3792", credit: 3),
      Subjects(name: "Open Elective - II", code: "OEC", credit: 3),
      Subjects(name: "Open Elective - III", code: "OEC", credit: 3),
      Subjects(name: "Open Elective - IV", code: "OEC", credit: 3),
      Subjects(
        name: "Mechatronics and IoT Laboratory",
        code: "ME3781",
        credit: 2,
      ),
      Subjects(name: "Summer Internship", code: "ME3711", credit: 1),
    ],
    sem8: [
      // Note: This semester can be interchanged with Semester 7.
      Subjects(name: "Project Work / Internship", code: "ME3811", credit: 10),
    ],
  ),
  "IT": DepartmentSubjects(
    sem1: [
      Subjects(name: "Professional English - I", code: "HS3152", credit: 3),
      Subjects(name: "Matrices and Calculus", code: "MA3151", credit: 4),
      Subjects(name: "Engineering Physics", code: "PH3151", credit: 3),
      Subjects(name: "Engineering Chemistry", code: "CY3151", credit: 3),
      Subjects(
        name: "Problem Solving and Python Programming",
        code: "GE3151",
        credit: 3,
      ),
      Subjects(name: "Heritage of Tamils", code: "GE3152", credit: 1),
      Subjects(
        name: "Problem Solving and Python Programming Laboratory",
        code: "GE3171",
        credit: 2,
      ),
      Subjects(
        name: "Physics and Chemistry Laboratory",
        code: "BS3171",
        credit: 2,
      ),
      Subjects(name: "English Laboratory", code: "GE3172", credit: 1),
    ],
    sem2: [
      Subjects(name: "Professional English - II", code: "HS3252", credit: 2),
      Subjects(
        name: "Statistics and Numerical Methods",
        code: "MA3251",
        credit: 4,
      ),
      Subjects(
        name: "Physics for Information Science",
        code: "PH3256",
        credit: 3,
      ),
      Subjects(
        name: "Basic Electrical and Electronics Engineering",
        code: "BE3251",
        credit: 3,
      ),
      Subjects(name: "Engineering Graphics", code: "GE3251", credit: 4),
      Subjects(name: "Programming in C", code: "CS3251", credit: 3),
      Subjects(name: "Tamils and Technology", code: "GE3252", credit: 1),
      Subjects(
        name: "Engineering Practices Laboratory",
        code: "GE3271",
        credit: 2,
      ),
      Subjects(name: "Programming in C Laboratory", code: "CS3271", credit: 2),
      Subjects(
        name: "Communication Laboratory / Foreign Language",
        code: "GE3272",
        credit: 2,
      ),
      // Note: NCC Credit Course Level 1 is optional and not included in CGPA.
    ],
    sem3: [
      Subjects(name: "Discrete Mathematics", code: "MA3354", credit: 4),
      Subjects(
        name: "Digital Principles and Computer Organization",
        code: "CS3351",
        credit: 4,
      ),
      Subjects(name: "Foundations of Data Science", code: "CS3352", credit: 3),
      Subjects(
        name: "Data Structures and Algorithms",
        code: "CD3291",
        credit: 3,
      ),
      Subjects(name: "Object Oriented Programming", code: "CS3391", credit: 3),
      Subjects(
        name: "Data Structures and Algorithms Laboratory",
        code: "CD3281",
        credit: 2,
      ),
      Subjects(
        name: "Object Oriented Programming Laboratory",
        code: "CS3381",
        credit: 1.5,
      ),
      Subjects(name: "Data Science Laboratory", code: "CS3361", credit: 2),
      Subjects(name: "Professional Development", code: "GE3361", credit: 1),
    ],
    sem4: [
      Subjects(name: "Theory of Computation", code: "CS3452", credit: 3),
      Subjects(
        name: "Artificial Intelligence and Machine Learning",
        code: "CS3491",
        credit: 4,
      ),
      Subjects(name: "Database Management Systems", code: "CS3492", credit: 3),
      Subjects(name: "Web Essentials", code: "IT3401", credit: 4),
      Subjects(
        name: "Introduction to Operating Systems",
        code: "CS3451",
        credit: 3,
      ),
      Subjects(
        name: "Environmental Sciences and Sustainability",
        code: "GE3451",
        credit: 2,
      ),
      Subjects(
        name: "Operating Systems Laboratory",
        code: "CS3461",
        credit: 1.5,
      ),
      Subjects(
        name: "Database Management Systems Laboratory",
        code: "CS3481",
        credit: 1.5,
      ),
      // Note: NCC Credit Course level 2 is optional and not included in CGPA.
    ],
    sem5: [
      Subjects(name: "Computer Networks", code: "CS3591", credit: 4),
      Subjects(name: "Full Stack Web Development", code: "IT3501", credit: 3),
      Subjects(name: "Distributed Computing", code: "CS3551", credit: 3),
      Subjects(name: "Embedded Systems and IoT", code: "CS3691", credit: 4),
      Subjects(name: "Professional Elective I", code: "PEC", credit: 3),
      Subjects(name: "Professional Elective II", code: "PEC", credit: 3),
      Subjects(
        name: "Full Stack Web Development Laboratory",
        code: "IT3511",
        credit: 2,
      ),
      // Note: Mandatory Course-I is a non-credit course.
    ],
    sem6: [
      Subjects(
        name: "Object Oriented Software Engineering",
        code: "CCS356",
        credit: 4,
      ),
      Subjects(name: "Open Elective - I", code: "OEC", credit: 3),
      Subjects(name: "Professional Elective III", code: "PEC", credit: 3),
      Subjects(name: "Professional Elective IV", code: "PEC", credit: 3),
      Subjects(name: "Professional Elective V", code: "PEC", credit: 3),
      Subjects(name: "Professional Elective VI", code: "PEC", credit: 3),
      Subjects(
        name: "Mobile Applications Development Laboratory",
        code: "IT3681",
        credit: 1.5,
      ),
      // Note: Mandatory Course-II is a non-credit course.
      // Note: NCC Credit Course Level 3 is optional and not included in CGPA.
    ],
    sem7: [
      // Note: This semester can be interchanged with Semester 8.
      Subjects(name: "Human Values and Ethics", code: "GE3791", credit: 2),
      Subjects(name: "Elective - Management", code: "HSMC", credit: 3),
      Subjects(name: "Open Elective - II", code: "OEC", credit: 3),
      Subjects(name: "Open Elective - III", code: "OEC", credit: 3),
      Subjects(name: "Open Elective - IV", code: "OEC", credit: 3),
      Subjects(name: "Summer internship", code: "IT3711", credit: 2),
    ],
    sem8: [
      // Note: This semester can be interchanged with Semester 7.
      Subjects(name: "Project Work/Internship", code: "IT3811", credit: 10),
    ],
  ),
};
