import 'package:flutter/material.dart';

class PopularMoviesList extends StatefulWidget {
  const PopularMoviesList({super.key});

  @override
  State<PopularMoviesList> createState() => _PopularMoviesListState();
}

class _PopularMoviesListState extends State<PopularMoviesList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.only(right: 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 177,
                  width: 263,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.network(
                        fit: BoxFit.cover,
                        "https://i.blogs.es/4bda9b/avengers/1366_2000.jpeg"),
                  ),
                ),
              ),
              SizedBox(height: 14),
              Text(
                "Avengers",
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                "Avengers," + "Action",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
