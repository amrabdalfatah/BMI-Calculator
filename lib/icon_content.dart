import 'package:flutter/material.dart';
import 'constants.dart';

class ResueColumnSex extends StatelessWidget {
  final IconData iconSex;
  final String textSex;
  ResueColumnSex({@required this.iconSex, @required this.textSex});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconSex,
          size: 60.0,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          textSex,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
