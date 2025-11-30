void edcutionLevel(String level) {
  switch (level) {
    case "Secondary":
      print("You are in Primary level.");
      break;
    case "bachelor’s":
      print("You are in bachelor’s level.");
      break;
    case "master’s":
      print("You are in master’s level.");
      break;
    case "PhD":
      print("You are in PhD level.");
      break;
    default:
      print("Unknown education level.");
  }
}

void checkMonth(String month) {
  switch (month) {
    case "January":
      print("January 31 days");
      break;
    case "February":
      print("February 28 or 29 days");
      break;
    case "March":
      print("March 31 days");
      break;
    case "April":
      print("April 30 days");
      break;
    case "May":
      print("May 31 days");
      break;
    case "June":
      print("June 30 days");
      break;
    case "July":
      print("July 31 days");
      break;

    case "August":
      print("August 31 days");
      break;
    case "September":
      print("September 30 days");
      break;
    case "October":
      print("October 31 days");
      break;

    case "November":
      print("November 30 days");
      break;
    case "December":
      print("December 31 days");
      break;
    default:
      print("Invalid month");
  }
}

void caseweathir(String weather) {
  switch (weather) {
    case "Sunny":
      print("It's a bright and sunny day!");
      break;
    case "Rainy":
      print("Don't forget your umbrella.");
      break;
    case "Cloudy":
      print("It's a bit gloomy outside.");
      break;
    case "Snowy":
      print("Time for some snow fun!");
      break;
    default:
      print("Weather condition unknown.");
  }
}

void calculater(int a, int b, String op) {
  switch (op) {
    case "+":
      print("The sum is ${a + b}");
      break;
    case "-":
      print("The difference is ${a - b}");
      break;
    case "*":
      print("The product is ${a * b}");
      break;
    case "/":
      if (b == 0) {
        print("Cannot divide by zero");
      } else {
        print("The quotient is ${a / b}");
      }
      break;
    default:
      print("Invalid operator");
  }
}

void WhatIsMonthInWeathir(int month) {
  switch (month) {
    case 1:
    case 2:
    case 12:
      print("It's Winter");
      break;
    case 3:
    case 4:
    case 5:
      print("It's Spring");
      break;
    case 6:
    case 7:
    case 8:
      print("It's Summer");
      break;
    case 9:
    case 10:
    case 11:
      print("It's Autumn");
      break;
    default:
      print("Invalid month number");
  }
}

void main() {
  edcutionLevel("master’s");
  checkMonth("March");
  caseweathir("Rainy");
  calculater(10, 2, "+");
  WhatIsMonthInWeathir(4);
  
}
