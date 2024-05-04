import 'package:amex_levelup/Screens/chatbot.dart';
import 'package:amex_levelup/Screens/moduleScreen.dart';
import 'package:amex_levelup/Widgets/container_glass.dart';
import 'package:amex_levelup/Widgets/customwidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                            width: 200,
                            height: 200,
                            decoration: const BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage('assets/Balance.png'), // Replace 'your_image.png' with your image asset path
            fit: BoxFit.cover,
          ),
            ),
                          ),
                          const SizedBox(height: 20,),
                          GlassContainer(
                      child: Column(
                    children: [
                      const CustomWidget(title: 'Check your financial literacy'),
                      const SizedBox(height: 20,),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const ModuleScreen()),
                            );
                        },
                        child: const CustomWidget(title: 'Learning Modules')),
                      const SizedBox(height: 20,),
                      const CustomWidget(title: 'Redeem your points'),
                      const SizedBox(height: 20,),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const Chatbot()),
                            );
                        },
                        child: const CustomWidget(title: 'Chatbot'))
                    ],
                  )),
          
          
            
          ],),
        ),
      ),
    ),
    );
  }
}