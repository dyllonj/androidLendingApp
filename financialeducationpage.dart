import 'package:flutter/material.dart';

class FinancialEducationPage extends StatefulWidget {
  @override
  _FinancialEducationPageState createState() => _FinancialEducationPageState();
}

class _FinancialEducationPageState extends State<FinancialEducationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Financial Education'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            // Course List
            Text('BEGINNER: BUILDING FINANCIAL FOUNDATIONS',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 15),

            // Module 1
            ListTile(
              leading: Icon(Icons.book),
              title: Text('1. Understanding money and its importance'),
              onTap: () {
                // Navigate to the specific module content
              },
            ),
            ListTile(
              leading: Icon(Icons.subdirectory_arrow_right),
              title: Text('1a. What is money?'),
            ),
            ListTile(
              leading: Icon(Icons.subdirectory_arrow_right),
              title: Text('1b. History of money & currency.'),
            ),
            ListTile(
              leading: Icon(Icons.subdirectory_arrow_right),
              title: Text('1c. The role of money in today\'s society.'),
            ),
            ElevatedButton(
              child: Text('Quiz: Basics of Money'),
              onPressed: () {
                // Navigate to the quiz for this module
              },
            ),
            SizedBox(height: 15),

            // Module 2
            ListTile(
              leading: Icon(Icons.book),
              title: Text('2. Earnings and Savings'),
            ),
            ListTile(
              leading: Icon(Icons.subdirectory_arrow_right),
              title: Text('2a. Basics of employment.'),
            ),
            ListTile(
              leading: Icon(Icons.subdirectory_arrow_right),
              title: Text('2b. Importance of savings.'),
            ),
            ListTile(
              leading: Icon(Icons.subdirectory_arrow_right),
              title: Text('2c. Introduction to interest rates.'),
            ),
            ElevatedButton(
              child: Text('Quiz: Earning and Saving Techniques.'),
              onPressed: () {
                // Navigate to the quiz for this module
              },
            ),
            SizedBox(height: 15),

            // Module 3
            ListTile(
              leading: Icon(Icons.book),
              title: Text('3. Budgeting 101'),
            ),
            ListTile(
              leading: Icon(Icons.subdirectory_arrow_right),
              title: Text('3a. The importance of a budget.'),
            ),
            ListTile(
              leading: Icon(Icons.subdirectory_arrow_right),
              title: Text('3b. How to create a simple budget.'),
            ),
            ListTile(
              leading: Icon(Icons.subdirectory_arrow_right),
              title: Text('3c. Living within your means.'),
            ),
            ElevatedButton(
              child: Text('Quiz: Building a Budget.'),
              onPressed: () {
                // Navigate to the quiz for this module
              },
            ),
            SizedBox(height: 15),

            // Module 4
            ListTile(
              leading: Icon(Icons.book),
              title: Text('4. Banking Basics'),
            ),
            ListTile(
              leading: Icon(Icons.subdirectory_arrow_right),
              title: Text('4a. Types of bank accounts.'),
            ),
            ListTile(
              leading: Icon(Icons.subdirectory_arrow_right),
              title: Text('4b. How banks work.'),
            ),
            ListTile(
              leading: Icon(Icons.subdirectory_arrow_right),
              title: Text('4c. The significance of banking for financial health.'),
            ),
            ElevatedButton(
              child: Text('Quiz: Navigating the Banking World.'),
              onPressed: () {
                // Navigate to the quiz for this module
              },
            ),
            SizedBox(height: 15),

            // Module 5
            ListTile(
              leading: Icon(Icons.book),
              title: Text('5. Introduction to credit'),
            ),
            ListTile(
              leading: Icon(Icons.subdirectory_arrow_right),
              title: Text('5a. What is credit?'),
            ),
            ListTile(
              leading: Icon(Icons.subdirectory_arrow_right),
              title: Text('5b. Why credit matters.'),
            ),
            ListTile(
              leading: Icon(Icons.subdirectory_arrow_right),
              title: Text('5c. Basics of credit scores.'),
            ),
            ElevatedButton(
              child: Text('Quiz: Grasping the Concept of Credit.'),
              onPressed: () {
                // Navigate to the quiz for this module
              },
            ),
            SizedBox(height: 15),

            // Module 6
            ListTile(
              leading: Icon(Icons.book),
              title: Text('6. Protecting your finances'),
            ),
            ListTile(
              leading: Icon(Icons.subdirectory_arrow_right),
              title: Text('6a. Basics of insurance.'),
            ),
            ListTile(
              leading: Icon(Icons.subdirectory_arrow_right),
              title: Text('6b. The importance of avoiding scams.'),
            ),
            ListTile(
              leading: Icon(Icons.subdirectory_arrow_right),
              title: Text('6c. Fundamentals of identity theft protection.'),
            ),
            ElevatedButton(
              child: Text('Quiz: Safeguarding Your Financial Future.'),
              onPressed: () {
                // Navigate to the quiz for this module
              },
            ),
            SizedBox(height: 30),

             SizedBox(height: 30),

            // INTERMEDIATE Course List
            Text('Intermediate Course: Growing Financial Stability',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 15),

            // Module 1
            ListTile(
              leading: Icon(Icons.book),
              title: Text('1. Advanced Budgeting Techniques'),
            ),
            ListTile(
              leading: Icon(Icons.subdirectory_arrow_right),
              title: Text('1a. The envelope system.'),
            ),
            ListTile(
              leading: Icon(Icons.subdirectory_arrow_right),
              title: Text('1b. Zero-based budgeting.'),
            ),
            ListTile(
              leading: Icon(Icons.subdirectory_arrow_right),
              title: Text('1c. Savings goals & emergency funds.'),
            ),
            ElevatedButton(
              child: Text('Quiz: Budgeting Scenarios.'),
              onPressed: () {
                // Navigate to the quiz for this module
              },
            ),
            SizedBox(height: 15),

            // ... [Following the same pattern for other Intermediate Modules]

            // Module 2
            ListTile(
              leading: Icon(Icons.book),
              title: Text('2. Investing Basics'),
            ),
            ListTile(
              leading: Icon(Icons.subdirectory_arrow_right),
              title: Text('2a. What is an investment?'),
            ),
            ListTile(
              leading: Icon(Icons.subdirectory_arrow_right),
              title: Text('2b. Types of investments: Stocks, bonds, real estate.'),
            ),
            ListTile(
              leading: Icon(Icons.subdirectory_arrow_right),
              title: Text('2c. The power of compound interest.'),
            ),
            ElevatedButton(
              child: Text('Quiz: Investment Scenarios.'),
              onPressed: () {
                // Navigate to the quiz for this module
              },
            ),
            SizedBox(height: 15),

            

            // Information Note
            Text(
              'Note: Simple cartoons have been integrated to make learning more engaging and effective.',
              style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
            ),
          ],
        ),
      ),
    );
  }
