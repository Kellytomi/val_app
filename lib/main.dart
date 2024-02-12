import 'package:flutter/material.dart';
import 'celebration.dart'; // Assuming your celebration screen is in 'celebration.dart'
import 'rejection.dart'; // Import the rejection screen
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Valentine Proposal',
      home: ProposalPage(),
      debugShowCheckedModeBanner: false, // Set debugShowCheckedModeBanner to falsefl
    );
  }
}

class ProposalPage extends StatefulWidget {
  @override
  _ProposalPageState createState() => _ProposalPageState();
}

class _ProposalPageState extends State<ProposalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade100,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Place your question text here
            Text(
              'Will you be my Valentine?',
              style: GoogleFonts.montserrat(
                  color: Colors.red,
                  fontSize: 24
              ),
            ),

            SizedBox(height: 20),

            // Your GIF will go here
            Image.asset('assets/be mine.gif'), // Adjust the path as per your project structure

            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () => _handleAnswer(true), // Pass true for 'yes'
                  child: Text('Yes', style: GoogleFonts.montserrat(color: Colors.pink.shade100, fontWeight: FontWeight.bold),),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                  ),
                ),
                ElevatedButton(
                  onPressed: () => _handleAnswer(false), // Pass false for 'no'
                  child: Text('No', style: GoogleFonts.montserrat(color: Colors.pink.shade100, fontWeight: FontWeight.bold),),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _handleAnswer(bool isYes) {
    if (isYes) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => CelebrationPage(isYes: isYes),
        ),
      );
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => RejectionPage(isYes: isYes),
        ),
      );
    }
  }
}
