// support_ticket_page.dart

import 'package:flutter/material.dart';

class SupportTicketPage extends StatefulWidget {
  @override
  _SupportTicketPageState createState() => _SupportTicketPageState();
}

class _SupportTicketPageState extends State<SupportTicketPage> {
  TextEditingController _subjectController = TextEditingController();
  TextEditingController _messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Support Ticket'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Subject:'),
            SizedBox(height: 8),
            TextField(
              controller: _subjectController,
              decoration: InputDecoration(
                hintText: 'Enter the subject of your ticket...',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            Text('Message:'),
            SizedBox(height: 8),
            TextField(
              controller: _messageController,
              maxLines: 5,
              decoration: InputDecoration(
                hintText: 'Describe your issue or query...',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle ticket submission logic here
                // For now, we just pop the page
                Navigator.of(context).pop();
              },
              child: Text('Submit Ticket'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _subjectController.dispose();
    _messageController.dispose();
    super.dispose();
  }
}
