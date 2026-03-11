import 'dart:ui';
import 'dart:math';

class ColorGenerator {
  static Color generateRandomColor() {
    final random = Random();

    final int red = random.nextInt(256);
    final int green = random.nextInt(256);
    final int blue = random.nextInt(256);

    return Color.fromARGB(255, red, green, blue);
  }
}
