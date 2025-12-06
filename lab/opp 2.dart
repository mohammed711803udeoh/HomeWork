class Person {
  int? id;
  String? pName, pAddress;

  Person(this.id, this.pName, this.pAddress);
  void display() {
    print("ID: $id");
    print("Name: $pName");
    print("Address: $pAddress");
  }
}

class employee extends Person {
  double? salary;

  employee(super.id, super.pName, super.pAddress, this.salary);
  void display() {
    super.display();
    print("Salary: $salary");
  }
}

class ExtraEmployee extends employee {
  int? hours;
  double? pricePerHour;
  ExtraEmployee(
    super.id,
    super.pName,
    super.pAddress,
    super.salary,
    this.hours,
    this.pricePerHour,
  );
  void display() {
    super.display();
    print("Hours: $hours");
    print("Price per Hour: $pricePerHour");
  }

  double calculateExtraSalary() {
    return hours! * pricePerHour!;
  }
}

void main() {
  Person p1 = Person(10, "Mohammed", "Sana");
  p1.display();
  print("----------------------------------");
  employee e1=employee(10,"sam","ab",5000);
  e1.display();
  print("----------------------------------");
  ExtraEmployee ex1=ExtraEmployee(7, "ali", "some address", 6000, 10, 50);
  ex1.display();
  print("Extra Salary: ${ex1.calculateExtraSalary()}");
}
