import 'package:flutter/material.dart';

class CustomWidget extends StatelessWidget {
  final String title;

  const CustomWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 61,
      decoration: BoxDecoration(
        color: Color(0xFF19173D),
        borderRadius: BorderRadius.circular(50),
        border: Border.all(width: 1, color: Colors.white),
      ),
      padding: EdgeInsets.symmetric(horizontal: 14, vertical: 14),
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
