import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:white_noise/components/grid_cell.dart';
import 'package:white_noise/components/audio_button.dart';

class SoundList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SoundListState();
  }
}

class SoundListState extends State<SoundList> {
  Map audioMap = new Map();
  getAudioData() async {
    final json =
        await DefaultAssetBundle.of(context).loadString('assets/audios.json');
    setState(() {
      audioMap = jsonDecode(json);
    });
  }

  @override
  void initState() {
    super.initState();
    getAudioData();
  }

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
          children: audioMap.keys.map((item) {
            return GridCell(
              child: AudioButton(
                icon_normal: audioMap[item]['normal'],
                icon_active: audioMap[item]['active'],
                audio: audioMap[item]['audio'],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
