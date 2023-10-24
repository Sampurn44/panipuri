import 'package:flutter/material.dart';
import 'package:panipuri/components/button.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: Colors.grey[900],
        ),
        title: Text(
          'India',
          style: TextStyle(color: Colors.grey[900]),
        ),
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(color: Color.fromRGBO(62, 224, 51, 55)),
            child: Row(
              children: [
                Column(children: [
                  Text('Get 25% Promo'),
                  Allinone(text: "Redeem", onTap: () {}),
                ]),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
