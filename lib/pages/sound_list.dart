import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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

  List<Widget> generateList(Map json) {
    return json.values
        .map(
          (group) => Container(
            child: Column(
              children: generateGroup(group),
            ),
          ),
        )
        .toList();
  }

  List<Widget> generateGroup(Map group) {
    final String title = group['title'];
    final Map data = group['data'];
    return [
      Container(
        alignment: Alignment.center,
        child: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
      ),
      Container(
        child: Wrap(
          children: data.keys
              .map(
                (audioName) => generateItem(data[audioName]),
              )
              .toList(),
        ),
      ),
    ];
  }

  Widget generateItem(Map item) {
    final String normal = item['normal'];
    final String active = item['active'];
    final String audio = item['audio'];
    final String title = item['title'];
    return AudioButton(
      icon_normal: normal,
      icon_active: active,
      audio: audio,
    );
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
      child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: generateList(audioMap),
          ),
        ),
      ),
    );
  }
}
