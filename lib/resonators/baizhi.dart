import 'package:flutter/material.dart';

class BaizhiScreen extends StatelessWidget {
  const BaizhiScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54, // Example styling
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/resonators/Baizhi.png', // Use the resonator's image
              height: 200,
            ),
            const SizedBox(height: 20),
            const Text(
              'Details for Baizhi',
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontFamily: 'WuwaFonts',
              ),
            ),
            // Add more details specific to Aalto
          ],
        ),
      ),
    );
  }
}