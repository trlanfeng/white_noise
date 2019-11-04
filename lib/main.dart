import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:white_noise/pages/settings.dart';
import 'package:white_noise/pages/sound_current.dart';
import 'package:white_noise/pages/sound_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: '白噪音',
      routes: {
        '/': (context) => SoundList(),
        '/current': (context) => SoundCurrent(),
        '/settings': (context) => Settings(),
      },
    );
  }
}
