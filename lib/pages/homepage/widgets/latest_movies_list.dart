import 'package:flutter/material.dart';

class LatestMoviesList extends StatefulWidget {
  const LatestMoviesList({super.key});

  @override
  State<LatestMoviesList> createState() => _LatestMoviesListState();
}

class _LatestMoviesListState extends State<LatestMoviesList> {
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
              Container(
                height: 139,
                width: 138,
                decoration: BoxDecoration(),
                child: Image.network(
                    fit: BoxFit.cover,
                    "https://filmchop.com/wp-content/uploads/2021/06/disney-shares-new-posters-for-upcoming-pixar-film-luca.jpg"),
              ),
              SizedBox(height: 1),
              Container(
                width: 138,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "LUCA",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Animation," + "Adventure",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
