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
          padding: const EdgeInsets.all(32.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
              
              // Banner
              Container(
                padding: EdgeInsets.all(30),
                color: Colors.blue,
                child: Text(
                  'Welcome to [Platform Name]! Your path to financial understanding starts here.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ),
              SizedBox(height: 40),
              
              // Login Section
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 300,
                    padding: EdgeInsets.all(8.0),
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        labelText: 'Inmate ID',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(width: 40),
                  Container(
                    width: 300,
                    padding: EdgeInsets.all(8.0),
                    child: TextField(
                      textAlign: TextAlign.center,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                ),
                child: Text('Login', style: TextStyle(fontSize: 18)),
                onPressed: () {
                  // Handle the login logic
                },
              ),
              SizedBox(height: 20),
              TextButton(
                child: Text('Forgot Password', style: TextStyle(fontSize: 16)),
                onPressed: () {
                  // Navigate to the help page
                },
              ),
              SizedBox(height: 40),

              // Informational Section
              Text(
                'Our Mission: [Brief summary of platform\'s mission, goals, and services.]',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 22),
              ),
              SizedBox(height: 40),
              
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
                hint: Text('Select Language', style: TextStyle(fontSize: 18)),
              ),
              
              // Footer
              Container(
                padding: EdgeInsets.symmetric(vertical: 30),
                child: Column(
                  children: [
                    Text('Legal Disclaimers', style: TextStyle(fontSize: 18)),
                    SizedBox(height: 10),
                    Text('Terms of Service', style: TextStyle(fontSize: 18)),
                    SizedBox(height: 10),
                    Text('Privacy Policy', style: TextStyle(fontSize: 18)),
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
