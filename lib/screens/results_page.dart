import 'package:bmi_calculator_app/components/bottom_button.dart';
import 'package:bmi_calculator_app/constants.dart';
import 'package:bmi_calculator_app/components/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({
    required this.getBMI,
    required this.getResult,
    required this.getInterpretation,
  });

  final String getBMI;
  final String getResult;
  final String getInterpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  'YOUR RESULT',
                  style: kTitleTextStyle,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              cardColor: kActiveCardColor,
              cardChild: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    getResult,
                    style: kResultTextStyle,
                  ),
                  Text(
                    getBMI,
                    style: kBMITextStyle,
                  ),
                  Text(
                    getInterpretation,
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            title: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
