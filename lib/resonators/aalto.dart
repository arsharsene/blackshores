import 'package:flutter/material.dart';

class AaltoScreen extends StatelessWidget {
  const AaltoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54, // Example styling
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // You can add Aalto's image, details, stats, etc. here
            Image.asset(
              'assets/resonators/Aalto.png', // Use the resonator's image
              height: 200,
            ),
            const SizedBox(height: 20),
            const Text(
              'Details for Aalto',
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