import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';

class AudioManager {
  final String prefix = 'sleepo/audios/';
  Map<String, AudioPlayer> players;

  // 工厂模式
  factory AudioManager() => _getInstance();
  static AudioManager get instance => _getInstance();
  static AudioManager _instance;
  static AudioManager _getInstance() {
    if (_instance == null) {
      _instance = new AudioManager._internal();
    }
    return _instance;
  }

  AudioManager._internal() {
    // 初始化
    players = Map();
  }

  enablePlayer(String audioName) async {
    if (!players.containsKey(audioName)) {
      AudioCache player = AudioCache(prefix: this.prefix);
      players[audioName] = await player.loop(audioName);
    }
    players[audioName].resume();
  }

  disablePlayer(String audioName) async {
    if (players.containsKey(audioName)) {
      await players[audioName].stop();
    }
  }
}
