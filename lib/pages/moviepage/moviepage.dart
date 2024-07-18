import 'package:flutter/material.dart';
import 'package:movies_app/pages/moviepage/widgets/actors_list.dart';
import 'package:movies_app/pages/moviepage/widgets/play_button.dart';

class Moviepage extends StatefulWidget {
  const Moviepage({super.key});

  @override
  State<Moviepage> createState() => _MoviepageState();
}

class _MoviepageState extends State<Moviepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: ListView(
          children: [
            Stack(
              children: [
                Container(
                  height: 280,
                  child: Image.network(
                      fit: BoxFit.cover,
                      "https://media.gq.com/photos/636d5a5e81d8a404117fe04d/16:9/w_2560%2Cc_limit/MCDJOWI_LG001.jpeg"),
                ),
                Positioned(
                  top: 10,
                  left: 10,
                  right: 10,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(50)),
                          child: const Icon(
                            Icons.arrow_back_ios_sharp,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(50)),
                        child: const Icon(
                          Icons.more_horiz,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 25),
            Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Movie",
                    style: TextStyle(fontSize: 20, color: Colors.orange),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "JOHN WICK",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.bookmark_border,
                        color: Colors.orange,
                        size: 30,
                      ),
                    ],
                  ),
                  Text(
                    "Action," + "Thriller," + "Crime",
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                  Row(
                    children: [
                      Text(
                        "95% match",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.green.shade600,
                        ),
                      ),
                      SizedBox(width: 15),
                      Text(
                        "2023",
                        style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 70, 69, 69),
                        ),
                      ),
                      SizedBox(width: 15),
                      const Text(
                        "2h 49m",
                        style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 70, 69, 69),
                        ),
                      ),
                      SizedBox(width: 15),
                      const Text(
                        "R",
                        style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 70, 69, 69),
                        ),
                      ),
                      SizedBox(width: 15),
                      const Text(
                        "HD",
                        style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 70, 69, 69),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 225, 90, 0),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const Icon(
                          Icons.thumb_up_off_alt_rounded,
                          size: 18,
                        ),
                      ),
                      SizedBox(width: 15),
                      Container(
                        padding: EdgeInsets.only(
                            left: 10, right: 5, top: 1, bottom: 1),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 0, 52, 89),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: const Row(
                          children: [
                            Text(
                              "7.8",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(
                              Icons.star,
                              color: Color.fromARGB(255, 255, 90, 0),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 25),
                  PlayButton(),
                  SizedBox(height: 25),
                  Text(
                    "Prolog",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                  Text(
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  SizedBox(height: 25),
                  Text(
                    "Top Cast",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                  SizedBox(height: 10),
                  Container(height: 110, child: ActorsList()),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
