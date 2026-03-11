import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomAppBar extends StatelessWidget {
  final Color currentColor;

  const CustomAppBar({super.key, required this.currentColor});

  @override
  Widget build(BuildContext context) {
    final r = (currentColor.r * 255).round();
    final g = (currentColor.g * 255).round();
    final b = (currentColor.b * 255).round();

    // New way - hex string
    final hex =
        '#${r.toRadixString(16).padLeft(2, '0')}${g.toRadixString(16).padLeft(2, '0')}${b.toRadixString(16).padLeft(2, '0')}'
            .toUpperCase();
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

                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          "Copied to clipboard!",
                          style: TextStyle(color: Colors.black),
                        ),
                        backgroundColor: Colors.white,
                        duration: Duration(
                          seconds: 1,
                        ), // How long the SnackBar shows
                      ),
                    );
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
