import 'package:flutter/material.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 255, 90, 0),
        borderRadius: BorderRadius.circular(40),
      ),
      child: Padding(
        padding: EdgeInsets.only(right: 31, left: 31),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.home,
              color: Colors.white,
              size: 35,
            ),
            Icon(
              Icons.play_arrow_outlined,
              color: Colors.white,
              size: 35,
            ),
            Icon(
              Icons.bookmark_border,
              color: Colors.white,
              size: 35,
            ),
            GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.person_outline_rounded,
                color: Colors.white,
                size: 35,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
