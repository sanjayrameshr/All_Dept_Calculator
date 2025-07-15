
# 🎓 GPA & CGPA Calculator – Anna University (ECE, 2021 Regulation)

This Flutter application allows students of **Electronics and Communication Engineering (ECE)** under **Anna University 2021 Regulation** to calculate their **Semester GPA** and **overall CGPA** easily.

---

## 📁 Folder Structure

```bash

lib/
│
├── Calculations/
│   ├── calculatePage.dart      # Shared GPA calculation logic and UI
│   └── cgpa\_calculate.dart     # CGPA calculator with credit-weighted logic
│
├── Models/
│   └── subjects.dart           # Subject model class (name, credits, grade)
│
├── Semester\_Pages/
│   ├── Sem1.dart               # GPA screen for Semester 1
│   ├── Sem2.dart               # GPA screen for Semester 2
│   ├── Sem3.dart               # GPA screen for Semester 3
│   ├── Sem4.dart               # GPA screen for Semester 4
│   ├── Sem5.dart               # GPA screen for Semester 5
│   ├── Sem6.dart               # GPA screen for Semester 6
│   ├── Sem7.dart               # GPA screen for Semester 7
│   └── Sem8.dart               # GPA screen for Semester 8
│
├── home.dart                   # Main navigation screen (semester selection)
└── main.dart                   # App entry point

```

---

## 📱 Features

- ✅ GPA calculator for **all 8 semesters**, with predefined subjects and credits.
- ✅ Dropdown to select grades (O, A+, A, B+, B, RA, SA, WH).
- ✅ Centralized GPA logic using a **shared calculator page**.
- ✅ CGPA calculator with automatic credit mapping based on selected semester count.
- ✅ Clean UI with dynamic GPA/CGPA entry and reset options.

---

## ⚙️ How It Works

### 🧮 GPA Calculation
- Each semester page passes a list of `Subject` objects (`name`, `credits`, `grade`) to `calculatePage.dart`.
- GPA is calculated as:
```bash
  \[
  GPA = \frac{\sum(\text{Grade Point} \times \text{Credit})}{\sum(\text{Credits})}
  \]
```
### 📊 CGPA Calculation
- The user selects the **number of semesters completed**.
- App knows the **fixed credit values** for each semester:
```

\[22, 26, 25, 22, 21, 20, 16, 10]

````
- CGPA is computed as:
```bash
\[
CGPA = \frac{\sum(\text{Semester GPA} \times \text{Credits})}{\sum(\text{Credits})}
\]
```
---

## 🚀 Getting Started

### 1. Clone this repo:
```bash
git clone https://github.com/your-username/gpa-calculator.git
cd gpa-calculator
````

### 2. Run the app:

```bash
flutter pub get
flutter run
```

---

## 📸 Screenshots

* 🧮 GPA Calculator per semester
* 📊 CGPA Calculator (dynamic semester selection)
* 🎯 Simple and student-friendly UI

---

## 📌 Developer Info

* 💻 **Developer**: Sanjay R
* 🎓 **Dept**: Electronics & Communication Engineering (ECE)
* 🏛️ **University**: Anna University (2021 Regulation)
* 🔗 [LinkedIn](https://www.linkedin.com/in/sanjayrameshr)
* 🐙 [GitHub](https://github.com/sanjayrameshr)

---

## 📃 License

This project is for educational purposes and open for contributions. Attribution appreciated 🙌.

```

---

Would you like a downloadable `README.md` file or want this added directly into your Flutter project root?
```
