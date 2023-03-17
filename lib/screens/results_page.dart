import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/reusable_card.dart';
import 'package:bmi_calculator/components/bottom_button.dart';

class Results_page extends StatelessWidget {
  final String bmi;
  final String result;
  final String interpretation;
  Results_page(
      {required this.bmi, required this.result, required this.interpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('dsfgg'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
              flex: 2,
              child: Center(
                child: Container(
                  child: Text(
                    'Your Result',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 50,
                    ),
                  ),
                ),
              )),
          Expanded(
            flex: 12,
            child: reusable_card(
              colour: kInactiveColour,
              ReusableCardChild: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Container(
                      child: Center(
                        child: Text(
                          result.toUpperCase(),
                          style: TextStyle(
                            color: Colors.green[400],
                            fontSize: 38,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      child: Center(
                        child: Text(
                          bmi,
                          style: TextStyle(
                            color: Colors.green[400],
                            fontSize: 68,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      child: Center(
                        child: Text(
                          interpretation,
                          style: TextStyle(
                            color: Colors.green[400],
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Calculate(
              ontap: () => () {
                Navigator.pushNamed(context, 'inputpage');
              },
              buttonTitle: 'Re-Calculate',
            ),
          ),
        ],
      ),
    );
  }
}
