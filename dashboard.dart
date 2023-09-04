import 'package:flutter/material.dart';
import 'loanapplicationpage.dart';

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
                    Text('Current Balance: [balance]',
                        style: TextStyle(fontSize: 20, color: Colors.white)),
                    Text('Commissary Account: [amount]',
                        style: TextStyle(fontSize: 20, color: Colors.white)),
                  ],
                ),
              ),
              SizedBox(height: 20),

              // Total Interest Amount Due
              Text('Total Interest Amount Due: [interestAmount]',
                  style: TextStyle(fontSize: 20)),
              SizedBox(height: 20),

              // Total Amount Due
              Text('Total Amount Due: [totalAmount]',
                  style: TextStyle(fontSize: 20)),
              SizedBox(height: 20),

              // Pay Loan Balance with Commissary Account Balance
              ElevatedButton(
                child: Text('Pay Loan with Commissary Account'),
                onPressed: () {
                  // Handle payment logic here
                },
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
                  // Example DataRow
                  DataRow(cells: [
                    DataCell(Text('\$50')),
                    DataCell(Text('01/01/2023')),
                    DataCell(Text('Purpose Here'))
                  ]),
                ],
              ),
              SizedBox(height: 20),

              // Lend Now Button
              ElevatedButton(
                child: Text('Lend Now'),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => LoanApplicationPage()),
                  );
                },
              ),
              SizedBox(height: 20),

              // View Lending History Button
              ElevatedButton(
                child: Text('View Lending History'),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text('Lending History'),
                      content: LendingHistoryPage(),
                      actions: [
                        TextButton(
                          child: Text('Close'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    ),
                  );
                },
              ),
              SizedBox(height: 20),

              // Educational Notifications
              Container(
                padding: EdgeInsets.all(20),
                color: Colors.yellowAccent,
                child: Column(
                  children: [
                    Text('Financial Tip of the Day:',
                        style: TextStyle(fontSize: 18)),
                    Text(
                        'Saving even a small amount can lead to big rewards over time.',
                        style: TextStyle(fontSize: 16)),
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

class LendingHistoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200, // Control height for the pop-up content
      child: ListView.builder(
        itemCount: 5, // Example number of items
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('\$[amount]'), // Replace [amount] with actual data
            subtitle: Text('Date: [date]'), // Replace [date] with actual data
          );
        },
      ),
    );
  }
}

// Your LoanApplicationPage remains unchanged from above
