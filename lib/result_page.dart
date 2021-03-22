import 'constants.dart';
import 'package:flutter/material.dart';
import 'reusable_container.dart';
import 'bottom_button.dart';

class ResultScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Result'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
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
                  Text('Normal', style: kTextResult,),
                  Text('18.4', style: kBMIText,),
                  Text('Your BMI is to low, you must eat! ', textAlign: TextAlign.center , style: kBodyText,),
                ],
              ),
            ),
          ),
          BottomButton(onTap: () {Navigator.pop(context);}, textButton: 'RE-CALCULATE'),
        ],
      ),
    );
  }
}
