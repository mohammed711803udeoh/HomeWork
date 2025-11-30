import 'dart:io';

int ReadPositveNumber() {
  int? number;
  do {
    print("Enter a positive number 0-100: ");
    number = int.tryParse(stdin.readLineSync()!);
  } while (number! < 0 || number > 100);
  return number;
}

int ReadNumber(String Message) {
  int? number;
  do {
    print(Message);
    number = int.tryParse(stdin.readLineSync()!);
  } while (number == null);
  return number;
}

double sum3Subjcts(int sub1, int sub2, int sub3) {
  return (sub1 + sub2 + sub3).toDouble();
}

bool isPass(int Num) {
  return Num >= 50;
}

String readName() {
  String? name;
  do {
    print("Enter your name: ");
    name = stdin.readLineSync();
  } while (name == null || name.isEmpty);
  return name;
}

String GetPassOrfail(bool pass) {
  return pass ? "Pass" : "Fail";
}

void PrintStudentResult(String name, double total, String passOrFail) {
  print("Student Name: $name");
  print("Total Marks: $total");
  print("Result: $passOrFail");
}

void Question1() {
  String name = readName();
  int sub1 = ReadNumber("Enter marks for subject 1: ");
  int sub2 = ReadNumber("Enter marks for subject 2: ");
  int sub3 = ReadNumber("Enter marks for subject 3: ");
  double total = sum3Subjcts(sub1, sub2, sub3);
  String passOrFail = GetPassOrfail(
    isPass(sub1) && isPass(sub2) && isPass(sub3),
  );
  print("\n--------------------------------------------------\n");
  PrintStudentResult(name, total, passOrFail);
  print("\n--------------------------------------------------\n");
}

void Question2() {
  print("\n--------------------------------------------------\n");

  int totalMonth = ReadNumber("Enter total months: ");
  int NumberAlzakah = ReadNumber("Enter Zakah amount: ");
  if (NumberAlzakah >= 955000 && totalMonth >= 12) {
    double zakah = NumberAlzakah * 0.025;
    print("Zakah : $zakah");
    print("Total After Zakah : ${NumberAlzakah - zakah}");
  } else {
    print("No Zakah due.");
  }

  print("\n--------------------------------------------------\n");
}

void Question3() {
  print("\n--------------------------------------------------\n");

  double Salary = ReadNumber("Enter your salary: ").toDouble();
  int TotalHours = ReadNumber("Enter Total hours: ");
  const double hourlyRate = 0.12;
  double totalSalary = Salary * hourlyRate * TotalHours;
  print("Total Salary : $totalSalary");

  print("\n--------------------------------------------------\n");
}

void Question4() {
  double TotalBuy = ReadNumber("Enter total boys: ").toDouble();
  if (TotalBuy >= 10000) {
    double bonus = TotalBuy * 0.7;
    print("Bonus for boys: $bonus");
  } else if (TotalBuy >= 20000) {
    double bonus = TotalBuy * 0.12;
    print("Purchasing Amount: $TotalBuy");
    print("Bonus for boys: $bonus");
    print("Total after bonus: ${TotalBuy + bonus}");
  } else {
    print("No bonus for boys.");
  }
  print("\n--------------------------------------------------\n");
}

void main() {
  print(
    "\n******************* Welcome in Program Mohammed Jubran ****************\n",
  );
  Question1();
  Question2();
  Question3();
  Question4();

  print(
    "\n************************** Goodbye this is end ************************\n",
  );
}
