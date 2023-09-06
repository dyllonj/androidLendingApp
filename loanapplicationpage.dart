import 'package:flutter/material.dart';

class LoanApplicationPage extends StatefulWidget {
  @override
  _LoanApplicationPageState createState() => _LoanApplicationPageState();
}

class _LoanApplicationPageState extends State<LoanApplicationPage> {
  double? selectedAmount;
  bool acceptedTerms = false;
  bool useForPhoneCall = false;
  final double maxLoanAmount = 50.0;
  final double currentOutstandingLoan = 10.0; // Example value
  TextEditingController _loanAmountController = TextEditingController();
  TextEditingController _loanPurposeController = TextEditingController();

  void _submitApplication() {
    if ((currentOutstandingLoan + (selectedAmount ?? 0)) > maxLoanAmount) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Requested amount exceeds allowed limit!')),
      );
      return;
    }
    // Handle the submission logic here
    // For demo purposes, we'll just show a snackbar confirming submission.
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Loan application submitted!')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Loan Application')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            // Displaying Allowed Borrow Amount
            Text(
              'Allowed to Borrow: \$${maxLoanAmount - currentOutstandingLoan}',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),

            // Input Desired Loan Amount
            TextField(
              controller: _loanAmountController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Desired Loan Amount',
                prefixIcon: Icon(Icons.money),
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  selectedAmount = double.tryParse(value);
                });
              },
            ),
            SizedBox(height: 20),

            // Input Loan Purpose
            TextField(
              controller: _loanPurposeController,
              decoration: InputDecoration(
                labelText: 'Loan Purpose',
                hintText: 'Enter the purpose of your loan',
                prefixIcon: Icon(Icons.note),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),

            // Use for Phone Calls
            Row(
              children: [
                Checkbox(
                  value: useForPhoneCall,
                  onChanged: (bool? value) {
                    setState(() {
                      useForPhoneCall = value!;
                    });
                  },
                ),
                Flexible(child: Text('Use loan amount for phone calls')),
              ],
            ),
            SizedBox(height: 20),

            // Credit History Note
            Text(
              'Note: Taking a loan will impact your credit history.',
              style: TextStyle(color: Colors.red),
            ),
            SizedBox(height: 20),

            // Terms and Conditions Checkbox
            Row(
              children: [
                Checkbox(
                  value: acceptedTerms,
                  onChanged: (bool? value) {
                    setState(() {
                      acceptedTerms = value!;
                    });
                  },
                ),
                Flexible(child: Text('I accept the terms and conditions')),
              ],
            ),
            SizedBox(height: 20),

            // Submit Button
            ElevatedButton(
              child: Text('Submit Application'),
              onPressed: acceptedTerms ? _submitApplication : null,
            ),
          ],
        ),
      ),
    );
  }
}
