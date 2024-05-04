import 'package:amex_levelup/Widgets/container_glass.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Chatbot extends StatelessWidget {
  const Chatbot({super.key});

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
              Text(
          'Financial Guru Chatbot',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white.withOpacity(0.8700000047683716),
            fontSize: 25,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w700,
            height: 0,
            letterSpacing: -0.30,
          ),
        ),
        SizedBox(height: 40,),
                          GlassContainer(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
            'HELLO PRABHLEEN,',
            style: TextStyle(
              color: Color(0xFF7B78AA),
              fontSize: 20,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
              height: 0,
            ),
          ),
          SizedBox(height: 20),
          Text(
                  'How can I help you today?',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.8700000047683716),
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
                SizedBox(height: 20,),
                Container(
      width: double.infinity,
      height: 181,
      decoration: BoxDecoration(
        color: Color(0x7F19173D),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          width: 1,
          color: Colors.white.withOpacity(0.6),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(42, 22.53, 0, 0),
        child: SizedBox(
          width: double.infinity,
          height: 82.14,
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Enter a prompt here...',
              hintStyle: TextStyle(
                color: Color(0xFF7B78AA),
                fontSize: 16,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
              ),
              border: InputBorder.none,
            ),
            style: TextStyle(
              color: Color(0xFF7B78AA),
              fontSize: 16,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
            ),
            // Add more properties like controller, textInputAction, etc. if needed
          ),
        ),
      ),
    )
                    ],
                  )),
          
          
            
          ],),
        ),
      ),
    ),
    );
  }
}