import 'package:donationsapp_assignment2/utils/info_card.dart';
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
      body: ListView.builder(itemCount: 8, itemBuilder: (context, index) => ListTile(
        title: InfoCard(),
      )),
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
          child: IconButton(
            icon: Icon(Icons.more_horiz),
            onPressed: () {},
          ),
        )
      ],
    );
  }
}
