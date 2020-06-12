import 'package:bmi_calculator/components/constants.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../components/ReusableCard.dart';
import 'inputPage.dart';
import 'package:bmi_calculator/components/BottomButton.dart';
import 'package:bmi_calculator/components/computerBrain.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(this.interpretation, this.bmiResult, this.resultText);
  final String bmiResult;
  final String resultText;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Your Result',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      resultText.toUpperCase(),
                      style: kResultText,
                    ),
                    Text(
                      bmiResult,
                      style: kBMIstyleText,
                    ),
                    Text(
                      interpretation,
                      textAlign: TextAlign.center,
                      style: kBodyText,
                    ),
                  ],
                ),
                colour: kActiveCardColor,
              ),
            ),
            BottomButton(
              () {
                Navigator.pop(context);
              },
              'RE-CALCULATE',
            ),
          ],
        ),
      ),
    );
  }
}
