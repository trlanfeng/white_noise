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
  bool active = false;
  BoxBorder borderNormal = Border.all(width: 0);
  BoxBorder borderActive =
      Border.all(width: 3, color: Helper.color('#A3A3A3FF'));
  BoxBorder border = Border.all(width: 0);
  Color background = Helper.color('#1D1D1DFF');
  Color backgroundNormal = Helper.color('#1D1D1DFF');
  Color backgroundActive = Colors.white;

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
      width: 66,
      height: 66,
      decoration: BoxDecoration(
        border: border,
        borderRadius: BorderRadius.all(Radius.circular(100)),
        color: background,
      ),
      child: CupertinoButton(
        onPressed: () {
          setState(() {
            active = !active;
            icon = active ? widget.icon_active : widget.icon_normal;
            border = active ? borderActive : borderNormal;
            background = active ? backgroundActive : backgroundNormal;
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
