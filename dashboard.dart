import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // Account Overview
              Container(
                padding: EdgeInsets.all(20),
                color: Colors.blueAccent,
                child: Column(
                  children: [
                    Text('Current Balance: [balance]', style: TextStyle(fontSize: 20, color: Colors.white)),
                    Text('Commissary Account: [amount]', style: TextStyle(fontSize: 20, color: Colors.white)),
                  ],
                ),
              ),
              SizedBox(height: 20),
              
              // Transaction History
              Text('Transaction History', style: TextStyle(fontSize: 18)),
              DataTable(
                columns: [
                  DataColumn(label: Text('Amount')),
                  DataColumn(label: Text('Date')),
                  DataColumn(label: Text('Purpose')),
                ],
                rows: [
                  // Add DataRow for each transaction, example:
                  // DataRow(cells: [DataCell(Text('$50')), DataCell(Text('01/01/2023')), DataCell(Text('Purpose Here'))]),
                ],
              ),
              SizedBox(height: 20),

              // Profile Settings
              ElevatedButton(
                child: Text('Profile Settings'),
                onPressed: () {
                  // Navigate to profile settings page
                },
              ),
              SizedBox(height: 20),

              // Educational Notifications
              Container(
                padding: EdgeInsets.all(20),
                color: Colors.yellowAccent,
                child: Column(
                  children: [
                    Text('Financial Tip of the Day:', style: TextStyle(fontSize: 18)),
                    Text('Saving even a small amount can lead to big rewards over time.', style: TextStyle(fontSize: 16)),
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
