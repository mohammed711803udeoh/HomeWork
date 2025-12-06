class Employee {
  int? EmpNo;
  String? EmpName, empJob;

  Employee(this.EmpNo, this.EmpName, this.empJob);
  void PrintEmpData() {
    print("Employee Number: $EmpNo");
    print("Employee Name: $EmpName");
    print("Employee Job: $empJob");
  }
}

class EmpSalaried extends Employee {
  double? Salary, Bonus = 0.10, Tax = 0.15, NetSalary;

  EmpSalaried(super.EmpNo, super.EmpName, super.empJob, this.Salary);
  void printEmpSalData() {
    super.PrintEmpData();
    print("Employee Salary: $Salary");
    print("Employee Bonus: ${Salary! * Bonus!}");
    print("Employee Tax: ${Salary! * Tax!}");
    print("Net Salary: ${Salary! + (Salary! * Bonus!) - (Salary! * Tax!)}");
    Bonus = Salary! * 0.10;
    Tax = Salary! * 0.15;
    NetSalary = Salary! + Bonus! - Tax!;
  }
}

class EmpHourly extends Employee {
  int? Hours;
  double? Cost, Total;
  EmpHourly(super.EmpNo, super.EmpName, super.empJob, this.Hours, this.Cost);
  void printEmpHourData() {
    super.PrintEmpData();
    print("Employee Hours: $Hours");
    print("Employee Cost per Hour: $Cost");
    print("Total Salary: ${Hours! * Cost!}");
  }
}

void main() {
  Employee e1 = Employee(101, "Sam", "Manager");
  e1.PrintEmpData();
  print("------------------------------");
  EmpSalaried es1 = EmpSalaried(102, "Ali", "Developer", 5000);
  es1.printEmpSalData();
  print("------------------------------");
  EmpHourly eh1 = EmpHourly(103, "Omar", "Support", 20, 5000);
  eh1.printEmpHourData();
}
