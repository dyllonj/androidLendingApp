// how_it_works_page.dart
import 'package:flutter/material.dart';

class HowItWorksPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('How It Works')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Step 1:', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text('Description for step 1.'),
            SizedBox(height: 20),
            
            Text('Step 2:', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text('Description for step 2.'),
            SizedBox(height: 20),
            
            Text('Step 3:', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text('Description for step 3.'),
            SizedBox(height: 20),
            
            // Add more steps as needed...
          ],
        ),
      ),
    );
  }
}
