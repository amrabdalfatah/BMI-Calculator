import 'package:flutter/material.dart';

class ReusableContainer extends StatelessWidget {
  final Widget containerChild;
  final Color color;
  ReusableContainer({@required this.color, @required this.containerChild});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: containerChild,
    );
  }
}
