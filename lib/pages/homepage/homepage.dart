import 'package:flutter/material.dart';
import 'package:movies_app/pages/homepage/widgets/latest_movies_list.dart';
import 'package:movies_app/pages/homepage/widgets/navigation.dart';
import 'package:movies_app/pages/homepage/widgets/popular_movies_list.dart';
import 'package:movies_app/pages/homepage/widgets/search_movies_textfield.dart';
import 'package:movies_app/pages/homepage/widgets/movie_swiper.dart';
import 'package:movies_app/pages/homepage/widgets/tv_series_list.dart';
import 'package:movies_app/providers/movie_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    Provider.of<MovieProvider>(context, listen: false).fetchMovies();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.only(left: 17, right: 17),
          child: Stack(
            children: [
              ListView(
                children: [
                  SizedBox(height: 30),
                  Row(
                    children: [
                      Container(
                        height: 48,
                        width: 48,
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(
                            50,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: const TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Hello",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "IRAKLI",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              "Enjoy your favorite movie",
                              style: TextStyle(
                                color: Colors.grey.shade500,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Icon(
                        Icons.notifications_outlined,
                        size: 30,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  const SizedBox(height: 32),
                  const SearchMovieTextfield(),
                  const SizedBox(height: 25),
                  MovieSwiper(),
                  const SizedBox(height: 25),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Popular Movies",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 23,
                        ),
                      ),
                      Text(
                        "See all",
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 25),
                  SizedBox(
                    height: 263,
                    child: PopularMoviesList(),
                  ),
                  const SizedBox(height: 14),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "TV Series",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 23,
                        ),
                      ),
                      Text(
                        "See all",
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 25),
                  SizedBox(
                    height: 195,
                    child: TvSeriesList(),
                  ),
                  const SizedBox(height: 25),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Latest",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 23,
                        ),
                      ),
                      Text(
                        "See all",
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 25),
                  SizedBox(
                    height: 195,
                    child: LatestMoviesList(),
                  ),
                ],
              ),
              const Positioned(
                bottom: 24,
                right: 21,
                left: 21,
                child: Navigation(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
