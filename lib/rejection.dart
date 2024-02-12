import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RejectionPage extends StatelessWidget {
  final bool isYes;
  RejectionPage({required this.isYes});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Red background
      body: Stack(
        children: [
          // Rejection text
          Positioned(
            top: MediaQuery.of(context).size.height * 0.2, // Adjust the position as needed
            left: 0,
            right: 0,
            child: Center(
              child: Text(
                'Na wa ooo',
                style: GoogleFonts.montserrat(
                  color: Colors.black,
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          // GIF as background
          Positioned.fill(
            child: Image.asset(
              'assets/cry.gif', // Replace with your GIF path for rejection
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
