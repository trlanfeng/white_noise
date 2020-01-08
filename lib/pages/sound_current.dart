import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SoundCurrent extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SoundCurrentState();
  }
}

class SoundCurrentState extends State<SoundCurrent> {
  Widget getSoundItem() {
    return Container(
      child: Row(
        children: <Widget>[
          Icon(Icons.ac_unit),
          Text('音乐'),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          getSoundItem(),
          getSoundItem(),
          getSoundItem(),
          getSoundItem(),
        ],
      ),
    );
  }
}
