import '../data/subject_details.dart';

class GpaCalculator {
  static const Map<String, double> gradeToPoint = {
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

  static double calculate({required List<Subjects> subjects}) {
    double totalCredits = 0;
    double weightedPoints = 0;

    if (subjects.any((s) => s.grade.isEmpty)) {
      throw ArgumentError(
        'Please select a grade for all subjects before calculating.',
      );
    }

    for (var subject in subjects) {
      double points = gradeToPoint[subject.grade]!;
      weightedPoints += points * subject.credit;
      totalCredits += subject.credit;
    }

    if (totalCredits == 0) {
      return 0.0;
    }
    return weightedPoints / totalCredits;
  }
}
