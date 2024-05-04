import 'package:amex_levelup/Widgets/container_glass.dart';
import 'package:amex_levelup/Widgets/tablerow.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Leaderboard extends StatelessWidget {
  const Leaderboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF19173D),
      appBar: AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: Padding(
        padding: const EdgeInsets.only(left: 16),
        child: Container(
          width: 44,
          height: 44,
          decoration: const ShapeDecoration(
            image: DecorationImage(
              image: NetworkImage("https://via.placeholder.com/44x44"),
              fit: BoxFit.fill,
            ),
            shape: CircleBorder(
              side: BorderSide(
                width: 3,
                color: Color(0xFF0DA6C2),
              ),
            ),
          ),
        ),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Welcome back!',
            style: TextStyle(
              color: Colors.white.withOpacity(0.87),
              fontSize: 15,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
            ),
          ),
          const Text(
            'Prabhleen Kaur',
            style: TextStyle(
              color: Color(0xFF7B78AA),
              fontSize: 13,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
      actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              // Add your onPressed logic here
            },
          ),
        ],
    ),
    body: SingleChildScrollView(
      child: Container(
        width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xFF19173D),
            ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: GlassContainer(
                      child: ListView.builder(
              shrinkWrap: true,
              itemCount: 5, // Number of items in the list
              itemBuilder: (BuildContext context, int index) {
                return Tablerow(); // Use Tablerow widget for each item
              },
            ),),
        ),
      ),
    ),
    );
  }
}