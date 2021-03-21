import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_container.dart';
import 'constants.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Gender selectedGender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableContainer(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    color: (selectedGender == Gender.male) ? kActiveColorContainer : kInActiveColorContainer,
                    containerChild: ResueColumnSex(
                      iconSex: FontAwesomeIcons.mars,
                      textSex: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableContainer(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    color: (selectedGender == Gender.female)? kActiveColorContainer : kInActiveColorContainer,
                    containerChild: ResueColumnSex(
                      iconSex: FontAwesomeIcons.venus,
                      textSex: 'FEMALE',
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ReusableContainer(
              color: kActiveColorContainer,
              containerChild: Column(
                children: [
                  Text('HEIGHT', style: kLabelTextStyle,),
                  Row(
                    children: [
                      Text('170', style: kHeightVarStyle,),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableContainer(
                    color: kActiveColorContainer,
                  ),
                ),
                Expanded(
                  child: ReusableContainer(
                    color: kActiveColorContainer,
                  ),
                )
              ],
            ),
          ),
          Container(
            color: kBottomColor,
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: kBottomContainerHeight,
          ),
        ],
      ),
    );
  }
}
