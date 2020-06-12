import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton(this.onTap, this.buttonTitle);
  final Function onTap;
  final String buttonTitle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(top: 25.0),
        child: Text(
          buttonTitle,
          style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w600),
          textAlign: TextAlign.center,
        ),
        height: kBottomCalculateButtonHeight,
        width: double.infinity,
        color: kBottomButtonColor,
      ),
    );
  }
}
