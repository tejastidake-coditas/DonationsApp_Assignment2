import 'package:donationsapp_assignment2/Pages/donations_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Positioned.fill(
          child: Image.network(
            'https://www.ndm.net.in/wp-content/uploads/2022/10/3-768x490.png',
            fit: BoxFit.cover,
          ),
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              RichText(
                text: TextSpan(
                  text: 'Every contribution counts,',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Serif"),
                  children: <TextSpan>[
                    TextSpan(
                      text: '\nNo matters how small...',
                      style: TextStyle(
                        color: Colors.black87,
                        backgroundColor: Colors.yellow,
                      ),
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DonationsPage()));
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("Let's Do It..."),
                      Icon(Icons.arrow_forward)
                    ],
                  ))
            ],
          ),
        ),
      ]),
    );
  }
}
