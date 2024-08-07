import 'package:flutter/material.dart';

class CustomListViewIcon extends StatelessWidget {
  const CustomListViewIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7/4,
      child: Container(
        decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: const DecorationImage(
            image: AssetImage('assets/images/Book 1 High.png'),
          ),
        ),
      ),
    );
  }
}
