import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'celebration.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'For Kemi',
      home: ProposalPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ProposalPage extends StatefulWidget {
  const ProposalPage({super.key});

  @override
  _ProposalPageState createState() => _ProposalPageState();
}

class _ProposalPageState extends State<ProposalPage> {
  int noButtonClickCount = 0;

  final List<String> noButtonTexts = [
    'No',
    'You Sure?',
    'Pookie Please',
    'One Last Chance',
    'Okay Fine'
  ];

  @override
  Widget build(BuildContext context) {
    double yesButtonWidth = 150 + noButtonClickCount * 10;
    double yesButtonHeight = 50 + noButtonClickCount * 5;

    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Place your question text here
            Text(
              'Will you be my GIRLFRIEND?',
              style: GoogleFonts.montserrat(
                color: Colors.red,
                fontSize: 24, fontWeight:FontWeight.bold
              ),
            ),

            const SizedBox(height: 20),

            // Your GIF will go here
            Image.asset('assets/bm.gif'), // Adjust the path as per your project structure

            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CelebrationPage(isYes: true),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    minimumSize: Size(yesButtonWidth, yesButtonHeight),
                  ),
                  child: Text(
                    'Yes',
                    style: GoogleFonts.montserrat(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18 + noButtonClickCount * 2,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      noButtonClickCount = (noButtonClickCount + 1) % noButtonTexts.length;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                  ),
                  child: Text(
                    noButtonTexts[noButtonClickCount],
                    style: GoogleFonts.montserrat(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
