import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:white_noise/common/helper.dart';

class AudioButton extends StatefulWidget {
  final String icon_normal;
  final String icon_active;
  final String audio;
  AudioButton({
    @required this.icon_active,
    @required this.icon_normal,
    @required this.audio,
  });
  @override
  State<StatefulWidget> createState() {
    return AudioButtonState();
  }
}

class AudioButtonState extends State<AudioButton> {
  String icon = '';

  @override
  void initState() {
    super.initState();
    setState(() {
      icon = widget.icon_normal;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        // border: Border.all(width: 2, color: Colors.white),
        borderRadius: BorderRadius.all(Radius.circular(100)),
        color: Helper.color('#1D1D1DFF'),
      ),
      child: CupertinoButton(
        onPressed: () {
          setState(() {
            icon = icon != widget.icon_normal
                ? widget.icon_normal
                : widget.icon_active;
          });
        },
        child: icon != ''
            ? Image.asset(
                'assets/sleepo/icons/' + icon,
              )
            : Container(),
      ),
    );
  }
}
