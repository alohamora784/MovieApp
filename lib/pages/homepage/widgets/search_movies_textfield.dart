import 'package:flutter/material.dart';

class SearchMovieTextfield extends StatefulWidget {
  const SearchMovieTextfield({super.key});

  @override
  State<SearchMovieTextfield> createState() => _SearchMovieTextfieldState();
}

class _SearchMovieTextfieldState extends State<SearchMovieTextfield> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 70, 69, 69),
        borderRadius: BorderRadius.circular(20),
      ),
      child: const TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.only(top: 15),
          prefixIcon: Padding(
            padding: EdgeInsets.only(
              left: 20,
              top: 15,
            ),
            child: Icon(
              Icons.search_sharp,
              color: Colors.black,
              size: 30,
            ),
          ),
          hintText: "Search Movie...",
          hintStyle: TextStyle(
            color: Color.fromARGB(255, 112, 110, 110),
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
