import 'package:donationsapp_assignment2/Pages/donations_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            RichText(
              text: TextSpan(
                text: 'Every contribution counts,',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Serif"),
                children: <TextSpan>[
                  TextSpan(
                    text: '\nNo matters how small...',
                    style: TextStyle(
                      backgroundColor: Colors.yellow, // highlight color
                    ),
                  ),
                ],
              ),
            ),
            OutlinedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DonationsPage()));
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [Text("Let's Do It..."), Icon(Icons.arrow_forward)],
                ))
          ],
        ),
      ),
    );
  }
}
