import 'package:flutter/material.dart';

class DonationsPage extends StatefulWidget {
  const DonationsPage({super.key});

  @override
  State<DonationsPage> createState() => _DonationsPageState();
}

class _DonationsPageState extends State<DonationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      leading: Card(
        elevation: 0,
        shape: CircleBorder(side: BorderSide(color: Colors.black12)),
        child: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_outlined),
          iconSize: 20,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      title: Text(
        "My Donations",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
      ),
      centerTitle: true,
      actions: [
        Card(
            elevation: 0,
            shape: CircleBorder(side: BorderSide(color: Colors.black12)),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Icon(Icons.more_horiz),
            ))
      ],
    );
  }
}
