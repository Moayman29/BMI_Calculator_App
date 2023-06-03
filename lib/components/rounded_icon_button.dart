import 'package:flutter/material.dart';

class RoundedIconButton extends StatelessWidget {
  RoundedIconButton({required this.icon, required this.onPressed});
  final IconData icon;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: (() => onPressed()),
      constraints: BoxConstraints.tightFor(
        height: 56.0,
        width: 56.0,
      ),
      child: Icon(
        icon,
        color: Colors.white,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xff4c4f5e),
    );
  }
}
