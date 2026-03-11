import 'package:flutter/material.dart';
import 'package:tapsoft/features/tap/services/color_generator.dart';
import 'package:tapsoft/features/tap/ui/widgets/custom_app_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color? currentColor;

  @override
  void initState() {
    super.initState();
    currentColor = ColorGenerator.generateRandomColor();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: currentColor,
      body: SafeArea(
        child: Column(
          children: [
            CustomAppBar(),
            Expanded(
              child: GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () {
                  setState(() {
                    currentColor = ColorGenerator.generateRandomColor();
                  });
                },
                child: Center(child: Text("Hello there",style: TextStyle(fontSize: 32),)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
