import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      decoration: BoxDecoration(
        border: BoxBorder.all(),
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Row(
          mainAxisAlignment: .spaceBetween,
          children: [
            Text(" 🇺🇦 ", style: TextStyle(fontSize: 32)),
            Text("rgb(256, 256, 256)", style: TextStyle(fontSize: 16)),
            Row(
              children: [
                Text("#href1234 ", style: TextStyle(fontSize: 16)),
                IconButton(onPressed: () {}, icon: Icon(Icons.copy)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
