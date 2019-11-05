import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SoundList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SoundListState();
  }
}

class SoundListState extends State<SoundList> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Colors.black,
      navigationBar: CupertinoNavigationBar(
        backgroundColor: Colors.white,
        middle: Text(
          '声音',
        ),
      ),
      child: Container(
        child: GridView.count(
          crossAxisCount: 3,
          children: <Widget>[
            Container(
              child: Image.asset('/assets/icons/png/ic_city_airplane_active.png'),
              // Text('声音'),
            ),
          ],
        ),
      ),
    );
  }
}
