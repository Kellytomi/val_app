import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CelebrationPage extends StatelessWidget {
  final bool isYes;
  const CelebrationPage({super.key, required this.isYes});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // GIF as background
          Positioned.fill(
            child: Image.asset(
              'assets/kev.gif', // Replace with your GIF path
              fit: BoxFit.cover,
            ),
          ),

          // Celebration/rejection content
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  isYes ? 'Yayyyyyy' : 'Rejection Text',
                  style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // Add more celebration/rejection content as needed
              ],
            ),
          ),
        ],
      ),
    );
  }
}
