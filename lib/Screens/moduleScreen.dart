import 'package:amex_levelup/Widgets/container_glass.dart';
import 'package:amex_levelup/Widgets/imagegridview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ModuleScreen extends StatelessWidget {
  const ModuleScreen({super.key});

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
          decoration:const ShapeDecoration(
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
            icon:const Icon(Icons.notifications),
            onPressed: () {
              // Add your onPressed logic here
            },
          ),
        ],
    ),
    body:Container(
          width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xFF19173D),
              ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: GlassContainer(
              child: Column(
                children: [
                  Text(
                    'Different Modules',
                    style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontFamily: 'DM Sans',
                    fontWeight: FontWeight.w700,
                    height: 0.06,
                    letterSpacing: 0.80,
                  ),),
                  SizedBox(height: 20,),
                  Expanded(
                    child: ImageGridView(
                      imageNames: [
                        'Card Stock01.png',
                        'Card Stock02.png',
                        'Card Stock03.png',
                        'Card Stock04.png',
                        // Add more asset image names as needed
                      ],
                    ),
                  ),
                ],
              )),),
        ),
      
    );
  }
}