import 'package:card_swiper/card_swiper.dart';

import 'package:flutter/material.dart';
import 'package:movies_app/pages/moviepage/moviepage.dart';

class MovieSwiper extends StatefulWidget {
  const MovieSwiper({super.key});

  @override
  State<MovieSwiper> createState() => _MovieSwiperState();
}

class _MovieSwiperState extends State<MovieSwiper> {
  @override
  Widget build(BuildContext context) {
    return Swiper(
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Moviepage()),
            );
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Stack(
                children: [
                  Image.network(
                      fit: BoxFit.cover,
                      "https://www.pantalla90.es/wp-content/uploads/2023/03/vZloFAK7NmvMGKE7VkF5UHaz0I.jpg"),
                  Positioned(
                    left: 10,
                    bottom: 5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Text(
                              "John Wick",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(width: 5),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.pink,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 8, right: 8),
                                child: const Text(
                                  "2023",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "Animation" + "|" + "Family",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "2h 49m",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
      itemCount: 6,
      itemWidth: 300,
      itemHeight: 450,
      layout: SwiperLayout.STACK,
      axisDirection: AxisDirection.right,
      pagination: const SwiperPagination(
        alignment: Alignment.topCenter,
        builder: DotSwiperPaginationBuilder(
          color: Colors.white,
          activeColor: Colors.orange,
          size: 8.0,
          space: 5.0,
          activeSize: 10,
        ),
      ),
    );
  }
}
