import 'package:amex_levelup/Screens/HomeScreen.dart';
import 'package:amex_levelup/Widgets/container_glass.dart';
import 'package:amex_levelup/Widgets/customtextfield.dart';
import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SignIn extends StatefulWidget {
  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  int _selectedIndex = 0;
  // late NotchBottomBarController _controller;

  // @override
  // void initState() {
  //   super.initState();
  //   _controller = NotchBottomBarController();
  // }

  // @override
  // void dispose() {
  //   _controller.dispose();
  //   super.dispose();
  // }
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF19173D),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xFF19173D),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
          'Login your account',
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
                  children: [
                    CustomTextField(labelText: 'Full Name', hintText: 'Enter your full name'),
                    SizedBox(height: 20),
                    CustomTextField(labelText: 'Email Address', hintText: 'Enter your email address',),
                    SizedBox(height: 20),
                    CustomTextField(labelText: 'Password', hintText: 'Enter password',),
                    SizedBox(height: 40,),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => MyHomePage(title:"")),
                            );
                      },
                      child: Center(
                        child: Container(
                          decoration: BoxDecoration(
                              color: Color(0xFF19173D), // Fixed color
                              borderRadius: BorderRadius.circular(40),
                              border: Border.all(
                                color: Color.fromARGB(255, 25, 89, 130), // Fixed border color
                                width: 3,
                              ), // Add border radius if needed
                            ),
                              width: 200,
                              height: 80,
                              child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Create an account?',
                                        style: TextStyle(
                                          color: Colors.white.withOpacity(0.87),
                                          fontSize: 17,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: 0.02,
                                        ),
                                      ),
                                      Text(
                                        'SIGN UP NOW!',
                                        style: TextStyle(
                                          color: Color(0xFF7B78AA),
                                          fontSize: 15,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400,
                                          letterSpacing: 0.02,
                                        ),
                                      ),
                                    ],
                                  ),
                            ),
                      ),
                    )
                  ],
                )),
              ],
            ),
          ),
        ),
      ),
  //     bottomNavigationBar:  SizedBox(
  //       width: double.infinity,
  // height: 30,
  //       child: AnimatedNotchBottomBar(
  //         notchBottomBarController: _controller,
  //         kIconSize: double.infinity,
  //         onTap: (value) => {},
  //         kBottomRadius: double.infinity,
  //         bottomBarItems: [
  //           const BottomBarItem(
  //         inActiveItem: Icon(
  //            Icons.home_filled,
  //             color: Colors.blueGrey,
  //         ),
  //         activeItem: Icon(
  //           Icons.home_filled,
  //           color: Colors.blueAccent,
  //         ),
  //         itemLabel: 'Page 1',
  //         ),
  //           const BottomBarItem(
  //         inActiveItem: Icon(
  //             Icons.star,
  //             color: Colors.blueGrey,
  //           ),
  //         activeItem: Icon(
  //             Icons.star,
  //             color: Colors.blueAccent,
  //         ),
  //         itemLabel: 'Page 2',
  //         ),
        
  //            ///svg item
  //           BottomBarItem(
  //         inActiveItem: Icon(
  //             Icons.star,
  //             color: Colors.blueGrey,
  //           ),
  //        activeItem: Icon(
  //             Icons.star,
  //             color: Colors.blueGrey,
  //           ),
  //        itemLabel: 'Page 3',
  //           ),
  //         ]
  //       ),
  //     )
  // bottomNavigationBar: BottomNavigationBar(
  //     currentIndex: _selectedIndex,
  //     selectedItemColor: Color(0xFF19173D), // Customize the selected item color
  //     backgroundColor: Color(0xFF19173D), // Change color as needed
  //     // padding: EdgeInsets.symmetric(horizontal: 24), // Adjust padding as needed
  //     items: const <BottomNavigationBarItem>[
  //       BottomNavigationBarItem(
  //         icon: Icon(Icons.home),
  //         label: 'Home',
  //       ),
  //       BottomNavigationBarItem(
  //         icon: Icon(Icons.search),
  //         label: 'Search',
  //       ),
  //       BottomNavigationBarItem(
  //         icon: Icon(Icons.favorite),
  //         label: 'Favorites',
  //       ),
  //       BottomNavigationBarItem(
  //         icon: Icon(Icons.person),
  //         label: 'Profile',
  //       ),
  //     ],
  //   )
    );
  }
}
