import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:panipuri/components/button.dart';
import 'package:panipuri/components/foodtile.dart';
import 'package:panipuri/models/food.dart';
import 'package:panipuri/pages/fooddetails.dart';
import 'package:panipuri/theme/colorbutton.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  List foodmenu = [
    Food(
        name: "Sukhi Pani Puri",
        price: "20",
        imagepath: "lib/images/sukhipuri.png",
        rating: "4.2"),
    Food(
        name: "Pani Puri Plate",
        price: "40",
        imagepath: "lib/images/pani_puri-removebg-preview.png",
        rating: "4.8"),
    Food(
        name: "Corn Pani Puri Plate",
        price: "60",
        imagepath: "lib/images/panipurifinal1.png",
        rating: "4.1"),
    Food(
        name: "Dahi Puri Plate",
        price: "55",
        imagepath: "lib/images/dahipuri-removebg-preview.png",
        rating: "4.6"),
  ];
  void navigateTofoodDetails(int index) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => fooddetails()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: Colors.grey[900],
        ),
        title: Text(
          'Guna',
          style: TextStyle(color: Colors.grey[900]),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
                color: primarycolor, borderRadius: BorderRadius.circular(20)),
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 30),
            margin: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Get 25% Promo',
                      style: GoogleFonts.dmSerifDisplay(fontSize: 20),
                    ),
                    const SizedBox(height: 25),
                    Allinone(text: "Redeem", onTap: () {}),
                  ],
                ),
                Image.asset(
                  "lib/images/sukhipuri.png",
                  height: 100,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(20)),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  hintText: "Search your food here"),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              "MENU",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[800],
                  fontSize: 19),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: foodmenu.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) =>
                  FoodTile(food: foodmenu[index], onTap: () {}),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(20),
            ),
            margin: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
            padding: EdgeInsets.all(25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      "lib/images/bhelpurifinal.png",
                      height: 60,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Bhel Puri",
                          style: GoogleFonts.dmSerifDisplay(fontSize: 22),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          '₹ 25',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[700]),
                        ),
                      ],
                    ),
                  ],
                ),
                Icon(
                  Icons.favorite_border,
                  color: Colors.grey,
                  size: 32,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
//Food(
        // name: "Bhel Puri Plate",
        // price: "25",
        // imagepath: ,
        // rating: "4.5"),