import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RoundButton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return RoundButtonState();
  }
}

class RoundButtonState extends State<RoundButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.white),
          borderRadius: BorderRadius.all(Radius.circular(100)),
        ),
        child: CupertinoButton(
          onPressed: () {},
          child: Image.asset(
            'assets/icons/png/rain.png',
            width: 30,
            height: 30,
          ),
        ),
      ),
    );
  }
}
