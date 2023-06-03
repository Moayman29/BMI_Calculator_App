import 'package:flutter/material.dart';
import 'package:bmi_calculator_app/constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({required this.title, required this.onTap});
  final Function onTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() => onTap()),
      child: Container(
        child: Center(
          child: Text(
            title,
            style: kBottomTextStyle,
          ),
        ),
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}