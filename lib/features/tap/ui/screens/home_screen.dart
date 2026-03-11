import 'package:flutter/material.dart';
import 'package:tapsoft/features/tap/ui/widgets/custom_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomAppBar(),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  
                },
                child: Center(
                  child: Text("Hello World"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
