import 'package:flutter/material.dart';

class MyBottomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        height: 90,
        color: Color(0xFF19173D), // Change color as needed
        padding: EdgeInsets.symmetric(horizontal: 24), // Adjust padding as needed
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildTabItem(Icons.home),
            _buildTabItem(Icons.search),
            _buildTabItem(Icons.favorite),
            _buildTabItem(Icons.person),
          ],
        ),
      ),
    );
  }

  Widget _buildTabItem(IconData icon) {
    return Container(
      width: 24,
      height: 24,
      child: Icon(
        icon,
        color: Colors.white, // Adjust icon color as needed
      ),
    );
  }
}
