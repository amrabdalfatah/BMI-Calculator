import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_container.dart';

const bottomContainerHeight = 60.0;
const activeColorContainer = Color(0xff1d1e33);
const inActiveColorContainer = Color(0xff111328);
Color bottomColor = Colors.red.shade800;

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
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    child: ReusableContainer(
                      color: (selectedGender == Gender.male)? activeColorContainer : inActiveColorContainer,
                      containerChild: ResueColumnSex(
                        iconSex: FontAwesomeIcons.mars,
                        textSex: 'MALE',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    child: ReusableContainer(
                      color: (selectedGender == Gender.female)? activeColorContainer : inActiveColorContainer,
                      containerChild: ResueColumnSex(
                        iconSex: FontAwesomeIcons.venus,
                        textSex: 'FEMALE',
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ReusableContainer(
              color: activeColorContainer,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableContainer(
                    color: activeColorContainer,
                  ),
                ),
                Expanded(
                  child: ReusableContainer(
                    color: activeColorContainer,
                  ),
                )
              ],
            ),
          ),
          Container(
            color: bottomColor,
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}
