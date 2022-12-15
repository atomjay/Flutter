import 'package:bmi_caculator/constants.dart';
import 'package:bmi_caculator/components/resuable_card.dart';
import 'package:flutter/material.dart';
import 'package:bmi_caculator/components/bottom_button.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {required this.bmiResult,
      required this.resultText,
      required this.bmiDescription});

  final String bmiResult;
  final String resultText;
  final String bmiDescription;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI CALCULATOR RESULT')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Container(
            padding: EdgeInsets.only(left: 15.0),
            alignment: Alignment.bottomLeft,
            child: Text('Your Result', style: kTitleTextStyle),
          )),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText,
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kBMITextStyle,
                  ),
                  Text(
                    bmiDescription,
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            onTab: () {
              Navigator.pop(context);
            },
            buttonText: '重新計算BMI',
          )
        ],
      ),
    );
  }
}
