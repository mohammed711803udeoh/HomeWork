import 'dart:io';

void OddOrEven(int number) {
  if (number % 2 == 0) {
    print("$number is Even");
  } else {
    print("$number is Odd");
  }
}

void AgePerson(int age) {
  if (age > 18) {
    print("Your age : $age.");
  } else {
    print("Your age is less than 18.");
  }
}

void checkFood(String food) {
  if (food == "Pizza") {
    print("I like Pizza too!");
  } else if (food == "Burger") {
    print("Burger is my favorite.");
  } else if (food == "Pasta") {
    print("Pasta is delicious.");
  } else {
    print("I prefer Pizza.");
  }
}

void checkPassword(int password) {
  //int? password;
  // do {
  //   stdout.write("Enter your password: ");
  //   String? input = stdin.readLineSync();
  //   password = int.tryParse(input ?? '') ?? 0;
  // } while (password != 12345678);
  if (password == 12345678) {
    print("login.");
  } else {
    print("your password is incorrect.");
  }
}


void main() {

  OddOrEven(7);
  AgePerson(20);
  checkFood("Burger");
  checkPassword(12345678);
}
