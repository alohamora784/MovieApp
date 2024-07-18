import 'package:flutter/material.dart';

class TvSeriesList extends StatefulWidget {
  const TvSeriesList({super.key});

  @override
  State<TvSeriesList> createState() => _TvSeriesListState();
}

class _TvSeriesListState extends State<TvSeriesList> {
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
                    "https://s3.amazonaws.com/criterion-production/films/9259a40bf9ceb623f565a9629416e6cc/ZMwlUFL3CDDMgsvBiMLhyDcWcdSAli_large.jpg"),
              ),
              SizedBox(height: 1),
              Container(
                width: 138,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "SEE",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Action," + "Adventure",
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
