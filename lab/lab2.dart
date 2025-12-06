import 'dart:io';

void main() {
  //   int z = 1;
  //   do {
  //     print("${z}");
  //     z++;
  //   } while (z < 10);
  //   for (int i = 1; i <= 5; i++) {
  //     for (int j = 1; j <= 5; j++) stdout.write("*");
  //     print("");
  //   }

  //   String name = "   sam   ali ";
  //   print(name.trim());
  //     String name2 = "   sam   ali ";
  //     stdout.write(name2.replaceAll(" ", ""));
  //     stdout.write("*");

  List<String> Colors = [];
  for (int i = 0; i < 3; i++) {
    stdout.write("Enter color ${i + 1}: ");
    String? color = stdin.readLineSync();
    if (color != null) {
      Colors!.add(color);
    }
    for (int j = 0; j < Colors.length; j++) {
        if(Colors[j]=="Red")
      print("The items :${Colors[j]}");
      else{
        print("The items is not here");
      }
    }
  }
}
