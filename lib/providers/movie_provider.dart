import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:movies_app/models/movie.dart';
import 'package:http/http.dart' as http;

class MovieProvider with ChangeNotifier {
  List<Movie> _movies = [];
  List<Movie> get movies => _movies;

  Future<void> fetchMovies() async {
    final response =
        await http.get(Uri.parse("https://yts.mx/api/v2/list_movies.json"));
    if (response.statusCode == 200) {
      final List<dynamic> responseData = jsonDecode(response.body)["data"]["movies"];
      _movies = responseData.map((json) => Movie.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load Movies ');
    }
    notifyListeners();
  }
}
