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
            Text('Course List:',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 15),
            ListTile(
              leading: Icon(
                  Icons.book), // You can replace with relevant icons or images
              title: Text('Module 1: Basics of Credit'),
              onTap: () {
                // Navigate to the specific module content
              },
            ),
            ListTile(
              leading: Icon(Icons.book),
              title: Text('Module 2: Financial Planning'),
              onTap: () {
                // Navigate to the specific module content
              },
            ),
            // ... Add more modules as needed
            SizedBox(height: 30),

            // Information Note
            Text(
              'Note: Simple cartoons have been integrated to make learning more engaging and effective.',
              style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
            ),
            SizedBox(height: 30),

            // Interactive Quizzes
            Text('Interactive Quizzes:',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 15),
            ElevatedButton(
              child: Text('Quiz for Module 1: Basics of Credit'),
              onPressed: () {
                // Navigate to the quiz for Module 1
              },
            ),
            ElevatedButton(
              child: Text('Quiz for Module 2: Financial Planning'),
              onPressed: () {
                // Navigate to the quiz for Module 2
              },
            ),
            // ... Add more quizzes as needed
          ],
        ),
      ),
    );
  }
}
