import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '[Platform Name]',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('[Platform Name]'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // Banner
              Container(
                padding: EdgeInsets.all(20),
                color: Colors.blue,
                child: Text(
                  'Welcome to [Platform Name]! Your path to financial understanding starts here.',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
              SizedBox(height: 20),
              
              // Login Section
              TextField(
                decoration: InputDecoration(
                  labelText: 'Inmate ID',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  child: Text('Forgot Password'),
                  onPressed: () {
                    // Navigate to the help page
                  },
                ),
              ),
              SizedBox(height: 20),

              // Informational Section
              Text(
                'Our Mission: [Brief summary of platform\'s mission, goals, and services.]',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 20),
              
              // Language Selector
              DropdownButton<String>(
                items: [
                  DropdownMenuItem(value: 'en', child: Text('English')),
                  DropdownMenuItem(value: 'es', child: Text('Spanish')),
                  // Add other languages as needed
                ],
                onChanged: (String? value) {
                  // Handle language change logic
                },
                hint: Text('Select Language'),
              ),
              
              // Footer
              Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  children: [
                    Text('Legal Disclaimers'),
                    Text('Terms of Service'),
                    Text('Privacy Policy'),
                    // Add other links as needed
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
