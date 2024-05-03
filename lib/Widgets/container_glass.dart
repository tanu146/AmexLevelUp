import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class GlassContainer extends StatelessWidget {
  final Widget child;
  const GlassContainer({required this.child});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromARGB(233, 41, 132, 171).withOpacity(0.5),
            Color.fromARGB(19, 84, 94, 124).withOpacity(0.3),
          ],
          stops: [
            0.1,
            1,
          ],
        ),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(19, 101, 117, 169).withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 10,
            offset: Offset(0, 2), // changes position of shadow
          ),
        ],
        border: Border.all(
          color: Color.fromARGB(255, 25, 89, 130), // Fixed border color
          width: 3,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: child, // Use the child passed in the constructor
      ),
    );
  }
}