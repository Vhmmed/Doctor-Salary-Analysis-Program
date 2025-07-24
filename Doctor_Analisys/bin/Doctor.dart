import 'dart:io';

void main() {

  print("=== Doctor Salary Analysis Program ===");
  print("This program collects doctor names and their salaries, then provides analysis.\n");
  List<String> doctors = [];
  List<double> prices = [];



  int i = 0;
  while (true) {

    stdout.write("Enter Name of Doctor ${i + 1}: ");
    String name = stdin.readLineSync() ?? '';

    if (name.trim().isEmpty) {
      print("Error: Doctor name cannot be empty!");
      continue;
    }

    doctors.add(name);
    i++;

    String ans;

    do {
      stdout.write("Do you want to add another doctor? (yes/no): ");
      ans = stdin.readLineSync()?.toLowerCase() ?? '';
      if (ans != 'yes' && ans != 'no') {
        print("Invalid input! Please enter 'yes' or 'no'.");
      }
    } while (ans != 'yes' && ans != 'no');

    if (ans == 'no') break;
  }

  if (doctors.isEmpty) {
    print("\nNo doctors were entered. Exiting program.");
    return;
  }

  for (int i = 0; i < doctors.length; i++) {
    while (true) {
      stdout.write("Enter The salary for Doctor ${doctors[i]}: ");
      String input = stdin.readLineSync() ?? '';
      try {
        double salary = double.parse(input);
        if (salary > 0) {
          prices.add(salary);
          break;
        }
        else {
          print("Invalid salary. Please enter a positive number.");
        }
      }
      catch (e) {
        print("Error: Please enter a valid number.");
      }
    }
  }

  double total = 0;

  for (int i = 0; i < prices.length; i++) {
    total += prices[i];
  }

  double maxSalary = prices[0];
  double minSalary = prices[0];
  int minIndex = 0;
  int maxIndex = 0;

  for(int i = 1 ; i < prices.length ;i++){
    if (prices[i] < minSalary) {
      minSalary = prices[i];
      minIndex= i;
    }
    if (prices[i] > maxSalary) {
      maxSalary = prices[i];
      maxIndex = i;
    }
  }
  double average = total / prices.length;
  double bonus = total * 0.10;

  print("\n--- Summary ---");

  print("Doctors: $doctors");
  print("Prices: $prices");

  print("Total price: \$${total.toStringAsFixed(2)}");
  print("Average price: \$${average.toStringAsFixed(2)}");
  print("Bonus (10%): \$${bonus.toStringAsFixed(2)}");

  print("Highest Salary: \$${maxSalary.toStringAsFixed(2)}");
  print("Lowest Salary: \$${minSalary.toStringAsFixed(2)}");

  print("\n--- Extra Details ---");

  print("Doctor ${doctors[maxIndex]}  Salary: (\$${maxSalary.toStringAsFixed(2)})");
  print("Doctor ${doctors[minIndex]} Salary: (\$${minSalary.toStringAsFixed(2)})");
}
