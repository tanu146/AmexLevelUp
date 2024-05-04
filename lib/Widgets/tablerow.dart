import 'package:flutter/material.dart';

class Tablerow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 358,
      height: 66,
      padding: const EdgeInsets.only(left: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            '1',
            style: TextStyle(
              color: Color(0x99EBEBF5),
              fontSize: 15,
              fontFamily: 'Amiko',
              fontWeight: FontWeight.w400,
              letterSpacing: -0.24,
            ),
          ),
          SizedBox(width: 10),
          Container(
            width: 44,
            height: 44,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: NetworkImage("https://via.placeholder.com/44x44"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Prabhleen',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontFamily: 'Amiko',
                    fontWeight: FontWeight.w400,
                    letterSpacing: -0.41,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'view info',
                  style: TextStyle(
                    color: Color(0x99EBEBF5),
                    fontSize: 13,
                    fontFamily: 'Amiko',
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.07,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '162529',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontFamily: 'Amiko',
                  fontWeight: FontWeight.w400,
                  letterSpacing: -0.24,
                ),
              ),
              SizedBox(height: 8),
              Text(
                '+25%',
                style: TextStyle(
                  color: Color(0xFF34C759),
                  fontSize: 13,
                  fontFamily: 'Amiko',
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.07,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}