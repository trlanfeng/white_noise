import 'dart:ui';

const designWidth = 375;

class Helper {
  static double rs(double width) {
    return (window.physicalSize.width / window.devicePixelRatio) /
        designWidth *
        width;
  }

  static Color color(String HEXA) {
    var str = HEXA.substring(1, 9);
    var bigint = int.parse(str, radix: 16);
    final r = (bigint >> 24) & 255;
    final g = (bigint >> 16) & 255;
    final b = (bigint >> 8) & 255;
    final a = bigint & 255;
    return Color.fromARGB(a, r, g, b);
  }
}
