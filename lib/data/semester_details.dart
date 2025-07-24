import '../data/subject_details.dart';

class SemData {
  final List<Subject> sem1Subjects = [
    Subject(code: 'HS3152', name: 'Professional English - I', credit: 3.0),
    Subject(code: 'MA3151', name: 'Matrices and Calculus', credit: 4.0),
    Subject(code: 'PH3151', name: 'Engineering Physics', credit: 3.0),
    Subject(code: 'CY3151', name: 'Engineering Chemistry', credit: 3.0),
    Subject(code: 'GE3151', name: 'Problem Solving and Python Programming', credit: 3.0),
    Subject(code: 'GE3152', name: 'Heritage of Tamils', credit: 1.0),
    Subject(code: 'GE3171', name: 'Problem Solving and Python Programming Laboratory', credit: 2.0),
    Subject(code: 'BS3171', name: 'Physics and Chemistry Laboratory', credit: 2.0),
    Subject(code: 'GE3172', name: 'English Laboratory', credit: 1.0),
  ];

  final List<Subject> sem2Subjects = [
    Subject(code: 'HS3252', name: 'Professional English - II', credit: 2.0),
    Subject(code: 'MA3251', name: 'Statistics and Numerical Methods', credit: 4.0),
    Subject(code: 'PH3254', name: 'Physics for Electronics Engineering', credit: 3.0),
    Subject(code: 'BE3254', name: 'Electrical and Instrumentation Engineering', credit: 3.0),
    Subject(code: 'GE3251', name: 'Engineering Graphics', credit: 4.0),
    Subject(code: 'EC3251', name: 'Circuit Analysis', credit: 4.0),
    Subject(code: 'GE3252', name: 'Tamils and Technology', credit: 1.0),
    Subject(code: 'GE3271', name: 'Engineering Practices Laboratory', credit: 2.0),
    Subject(code: 'EC3271', name: 'Circuits Analysis Laboratory', credit: 1.0),
    Subject(code: 'GE3272', name: 'Communication Laboratory / Foreign Language', credit: 2.0),
    // Note: NCC Credit Course is optional and not included in CGPA
  ];

  final List<Subject> sem3Subjects = [
    Subject(code: 'MA3355', name: 'Random Processes and Linear Algebra', credit: 4.0),
    Subject(code: 'CS3353', name: 'C Programming and Data Structures', credit: 3.0),
    Subject(code: 'EC3354', name: 'Signals and Systems', credit: 4.0),
    Subject(code: 'EC3353', name: 'Electronic Devices and Circuits', credit: 3.0),
    Subject(code: 'EC3351', name: 'Control Systems', credit: 3.0),
    Subject(code: 'EC3352', name: 'Digital Systems Design', credit: 4.0),
    Subject(code: 'EC3361', name: 'Electronic Devices and Circuits Laboratory', credit: 1.5),
    Subject(code: 'CS3362', name: 'C Programming and Data Structures Laboratory', credit: 1.5),
    Subject(code: 'GE3361', name: 'Professional Development', credit: 1.0),
  ];

  final List<Subject> sem4Subjects = [
    Subject(code: 'EC3452', name: 'Electromagnetic Fields', credit: 3.0),
    Subject(code: 'EC3401', name: 'Networks and Security', credit: 4.0),
    Subject(code: 'EC3451', name: 'Linear Integrated Circuits', credit: 3.0),
    Subject(code: 'EC3492', name: 'Digital Signal Processing', credit: 4.0),
    Subject(code: 'EC3491', name: 'Communication Systems', credit: 3.0),
    Subject(code: 'GE3451', name: 'Environmental Sciences and Sustainability', credit: 2.0),
    Subject(code: 'EC3461', name: 'Communication Systems Laboratory', credit: 1.5),
    Subject(code: 'EC3462', name: 'Linear Integrated Circuits Laboratory', credit: 1.5),
     // Note: NCC Credit Course is optional and not included in CGPA
  ];

  final List<Subject> sem5Subjects = [
    Subject(code: 'EC3501', name: 'Wireless Communication', credit: 4.0),
    Subject(code: 'EC3552', name: 'VLSI and Chip Design', credit: 3.0),
    Subject(code: 'EC3551', name: 'Transmission lines and RF Systems', credit: 3.0),
    Subject(code: 'PEC', name: 'Professional Elective I', credit: 3.0),
    Subject(code: 'PEC', name: 'Professional Elective II', credit: 3.0),
    Subject(code: 'PEC', name: 'Professional Elective III', credit: 3.0),
    Subject(code: 'EC3561', name: 'VLSI Laboratory', credit: 2.0),
    // Note: Mandatory Course-I is a non-credit course.
  ];

  final List<Subject> sem6Subjects = [
    Subject(code: 'ET3491', name: 'Embedded Systems and IOT Design', credit: 4.0),
    Subject(code: 'CS3491', name: 'Artificial Intelligence and Machine Learning', credit: 4.0),
    Subject(code: 'OEC', name: 'Open Elective- I', credit: 3.0),
    Subject(code: 'PEC', name: 'Professional Elective IV', credit: 3.0),
    Subject(code: 'PEC', name: 'Professional Elective V', credit: 3.0),
    Subject(code: 'PEC', name: 'Professional Elective VI', credit: 3.0),
    // Note: Mandatory Course-II is a non-credit course.
    // Note: NCC Credit Course is optional and not included in CGPA
  ];

  final List<Subject> sem7Subjects = [
    Subject(code: 'GE3791', name: 'Human Values and Ethics', credit: 2.0),
    Subject(code: 'HSMC', name: 'Elective - Management', credit: 3.0),
    Subject(code: 'OEC', name: 'Open Elective - II', credit: 3.0),
    Subject(code: 'OEC', name: 'Open Elective - III', credit: 3.0),
    Subject(code: 'OEC', name: 'Open Elective - IV', credit: 3.0),
    Subject(code: 'EC3711', name: 'Summer internship', credit: 2.0),
  ];
  
  final List<Subject> sem8Subjects = [
    Subject(code: 'EC3811', name: 'Project Work / Internship', credit: 10.0),
  ];
}