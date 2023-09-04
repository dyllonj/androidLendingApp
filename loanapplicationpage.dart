import 'package:flutter/material.dart';

class LoanApplicationPage extends StatefulWidget {
  @override
  _LoanApplicationPageState createState() => _LoanApplicationPageState();
}

class _LoanApplicationPageState extends State<LoanApplicationPage> {
  double? selectedAmount;
  bool acceptedTerms = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Loan Application')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            // Loan Amount Selection
            Text('Select Loan Amount:', style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  child: Text("\$5"),
                  onPressed: () {
                    setState(() {
                      selectedAmount = 5.0;
                    });
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                        if (selectedAmount == 5.0 && !states.contains(MaterialState.pressed))
                          return Theme.of(context).primaryColor;
                        return Theme.of(context).buttonTheme.colorScheme!.secondary; // fallback color
                      },
                    ),
                  ),
                ),
                ElevatedButton(
                  child: Text("\$10"),
                  onPressed: () {
                    setState(() {
                      selectedAmount = 10.0;
                    });
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                        if (selectedAmount == 10.0 &&
                            !states.contains(MaterialState.pressed))
                          return Theme.of(context).primaryColor;
                        return Theme.of(context).buttonTheme.colorScheme!.secondary; // fallback color
                      },
                    ),
                  ),
                ),
                ElevatedButton(
                  child: Text("\$20"),
                  onPressed: () {
                    setState(() {
                      selectedAmount = 20.0;
                    });
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                        if (selectedAmount == 20.0 &&
                            !states.contains(MaterialState.pressed))
                          return Theme.of(context).primaryColor;
                        return Theme.of(context).buttonTheme.colorScheme!.secondary; // fallback color
                      },
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),

            // Other input fields...
            // You can add other input fields related to the loan application here

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
              onPressed: acceptedTerms
                  ? () {
                      // Handle the submission logic here
                    }
                  : null,
            ),
          ],
        ),
      ),
    );
  }
}
