# Doctor-Salary-Analysis-Program
Program Overview

This Dart console application collects doctor salary data, performs financial calculations, and generates a comprehensive payroll report for medical institutions.
Key Features
1. Data Collection

    Interactive input of doctor names

    Salary entry with validation

    Flexible addition of multiple doctors

2. Input Validation

    Rejects empty doctor names

    Ensures salaries are positive numbers

    Handles non-numeric input gracefully

    Validates yes/no responses

3. Financial Calculations

    Total Salary Expenditure

    Average Salary Calculation

    10% Bonus Computation (of total salaries)

    Salary Extremes Identification (highest/lowest)

4. Reporting

    Clear tabular output format

    Detailed salary breakdown

    Highlighted key metrics

    Proper currency formatting

Technical Implementation
Core Components

    Doctor Name Collection: Loop with empty input checking

    Salary Entry: Type-safe numeric input validation

    Data Analysis:
    dart

    double total = prices.fold(0, (sum, price) => sum + price);

    Extreme Values Detection: Iterative comparison

Error Handling

    Try-catch blocks for numeric parsing

    Input sanitation with trim()

    Null safety checks (?? '' and ?. operators)

User Experience

    Step-by-step console prompts

    Clear error messages

    Intuitive yes/no flow control

    Organized results presentation

Sample Output
text

--- Summary ---
Doctors: [Dr. Smith, Dr. Johnson]
Salaries: [5000.0, 7500.0]
Total salary: $12,500.00
Average salary: $6,250.00
Bonus (10%): $1,250.00

--- Salary Extremes ---
Highest salary: Dr. Johnson ($7,500.00)
Lowest salary: Dr. Smith ($5,000.00)

Business Applications

    HR payroll management

    Budget planning and analysis

    Salary benchmarking

    Financial reporting

Strengths

    Robustness: Handles edge cases effectively

    Accuracy: Precise financial calculations

    Maintainability: Clean variable naming

    Scalability: Handles unlimited doctor entries

This program serves as a practical tool for medical practice administrators to manage and analyze physician compensation data efficiently.
