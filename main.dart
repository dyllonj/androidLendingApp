import 'dashboard.dart';  // Import the dashboard.dart file
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

// Remove the DashboardPage class definition from here

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _idController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Future<bool> authenticate(String id, String password) async {
    // Placeholder logic
    if (id == '123456' && password == 'password') {
      return true;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('[Platform Name]'),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                // Banner
                Container(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  color: Colors.blue,
                  child: Text(
                    'Welcome to [Platform Name]! Your path to financial understanding starts here.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                ),
                SizedBox(height: 40),

                // Login Section
                TextField(
                  controller: _idController,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    labelText: 'Inmate ID',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  controller: _passwordController,
                  textAlign: TextAlign.center,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  ),
                  child: Text('Login', style: TextStyle(fontSize: 18)),
                  onPressed: () async {
                    bool isAuthenticated = await authenticate(
                        _idController.text, _passwordController.text);
                    if (isAuthenticated) {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => DashboardPage()));
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Incorrect credentials!')),
                      );
                    }
                  },
                ),
                SizedBox(height: 20),
                Center(
                  child: TextButton(
                    child:
                        Text('Forgot Password', style: TextStyle(fontSize: 16)),
                    onPressed: () {
                      // Navigate to the help page
                    },
                  ),
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
                  isExpanded: true,
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
      ),
    );
  }
}
