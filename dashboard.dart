import 'package:flutter/material.dart';
import 'loanapplicationpage.dart';
import 'financialeducationpage.dart';
import 'support_ticket_page.dart';
import 'how_it_works_page.dart';
import 'faq_page.dart';

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
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              // Account Overview
              Container(
                padding: EdgeInsets.all(20),
                color: Colors.blueAccent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                        child: Text('Current Balance: [balance]',
                            style: const TextStyle(
                                fontSize: 20, color: Colors.white))),
                    Center(
                        child: Text('Commissary Account: [amount]',
                            style: const TextStyle(
                                fontSize: 20, color: Colors.white))),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Center(
                  child: Text('Total Interest Amount Due: [interestAmount]',
                      style: const TextStyle(fontSize: 20))),
              SizedBox(height: 20),
              Center(
                  child: Text('Total Amount Due: [totalAmount]',
                      style: const TextStyle(fontSize: 20))),
              SizedBox(height: 20),
              Container(
                width: MediaQuery.of(context).size.width * 0.6,
                height: 50,
                child: ElevatedButton(
                  child: Text('Pay Loan with Commissary Account',
                      style: const TextStyle(fontSize: 18)),
                  onPressed: () {
                    // Handle payment logic here
                  },
                ),
              ),
              SizedBox(height: 20),
              Center(
                  child: Text('Lending History',
                      style: const TextStyle(fontSize: 18))),
              DataTable(
                columns: [
                  DataColumn(label: Text('Amount')),
                  DataColumn(label: Text('Date')),
                  DataColumn(label: Text('Purpose')),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text('\$50')),
                    DataCell(Text('01/01/2023')),
                    DataCell(Text('Loan'))
                  ]),
                ],
              ),
              SizedBox(height: 20),
              Container(
                width: MediaQuery.of(context).size.width * 0.6,
                height: 50,
                child: ElevatedButton(
                  child: Text('Lend Now', style: const TextStyle(fontSize: 18)),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => LoanApplicationPage()),
                    );
                  },
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: MediaQuery.of(context).size.width * 0.6,
                height: 50,
                child: ElevatedButton(
                  child: Text('Financial Education',
                      style: const TextStyle(fontSize: 18)),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => FinancialEducationPage()),
                    );
                  },
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: MediaQuery.of(context).size.width * 0.6,
                height: 50,
                child: ElevatedButton(
                  child: Text('How It Works', style: const TextStyle(fontSize: 18)),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => HowItWorksPage()),
                    );
                  },
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: MediaQuery.of(context).size.width * 0.6,
                height: 50,
                child: ElevatedButton(
                  child: Text('Frequently Asked Questions', style: const TextStyle(fontSize: 18)),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => FAQPage()),
                    );
                  },
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: MediaQuery.of(context).size.width * 0.6,
                height: 50,
                child: ElevatedButton(
                  child: Text('Contact Us', style: const TextStyle(fontSize: 18)),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => SupportTicketPage()),
                    );
                  },
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(20),
                color: Colors.yellowAccent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                        child: Text('Financial Tip of the Day:',
                            style: const TextStyle(fontSize: 18))),
                    Center(
                        child: Text(
                            'Saving even a small amount can lead to big rewards over time.',
                            style: const TextStyle(fontSize: 16))),
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
