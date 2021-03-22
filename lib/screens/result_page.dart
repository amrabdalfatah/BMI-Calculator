import '../components/constants.dart';
import 'package:flutter/material.dart';
import '../components/reusable_container.dart';
import '../components/bottom_button.dart';

class ResultScreen extends StatelessWidget {

  ResultScreen({@required this.bmiCalc, @required this.resultText, @required this.interText,});
  final String bmiCalc;
  final String resultText;
  final String interText;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'RESULT',
                  style: kResultTextStyle,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableContainer(
                color: kActiveColorContainer,
                containerChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(resultText.toUpperCase(), style: kTextResult,),
                    Text(bmiCalc, style: kBMIText,),
                    Text(interText, textAlign: TextAlign.center , style: kBodyText,),
                  ],
                ),
              ),
            ),
            BottomButton(onTap: () {Navigator.pop(context);}, textButton: 'RE-CALCULATE'),
          ],
        ),
      ),
    );
  }
}
