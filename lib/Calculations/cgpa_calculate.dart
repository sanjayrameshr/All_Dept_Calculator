class CgpaCalculator {
  static const List<int> semesterCredits = [22, 26, 25, 22, 21, 20, 16, 10];

  static double calculate({required List<String> gpaInputs}) {
    double totalCredits = 0;
    double totalWeightedGpa = 0;

    if (gpaInputs.length > semesterCredits.length) {
      throw ArgumentError(
        'Cannot process more than ${semesterCredits.length} semesters.',
      );
    }

    for (int i = 0; i < gpaInputs.length; i++) {
      final double? gpa = double.tryParse(gpaInputs[i]);
      if (gpa == null || gpa < 0 || gpa > 10) {
        throw ArgumentError(
          'Invalid GPA for Semester ${i + 1}. Please enter a number between 0 and 10.',
        );
      }

      totalWeightedGpa += gpa * semesterCredits[i];
      totalCredits += semesterCredits[i];
    }
    if (totalCredits == 0) {
      return 0.0;
    }
    return totalWeightedGpa / totalCredits;
  }
}
