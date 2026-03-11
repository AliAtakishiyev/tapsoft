import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomAppBar extends StatelessWidget {
  final Color currentColor;

  const CustomAppBar({super.key, required this.currentColor});

  @override
  Widget build(BuildContext context) {
    final r = currentColor.red;
    final g = currentColor.green;
    final b = currentColor.blue;
    final hex =
        '#${currentColor.value.toRadixString(16).substring(2).toUpperCase()}';

    return Container(
      height: 64,
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("🇺🇦", style: TextStyle(fontSize: 32)),
            Text("rgb($r, $g, $b)", style: TextStyle(fontSize: 16)),
            Row(
              children: [
                Text(hex, style: TextStyle(fontSize: 16)),
                IconButton(
                  onPressed: () {
                    Clipboard.setData(ClipboardData(text: hex));
                    
                  },
                  icon: Icon(Icons.copy),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
