import 'package:flutter/material.dart';

const labelTextStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xff8d8e98),
);

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
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          textSex,
          style: labelTextStyle,
        ),
      ],
    );
  }
}
