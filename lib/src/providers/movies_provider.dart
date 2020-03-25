import 'package:http/http.dart' as http;

import 'dart:convert';

import 'package:movies/src/models/movie_model.dart';

class MoviesProvider {
  String _apikey = '7c6d6325775d517f38effa4bbda01b28';
  String _url = 'api.themoviedb.org';
  String _language = 'es-ES';

  Future<List<Movie>> getEnCines() async {
    final url = Uri.http(_url, '3/movie/now_playing', {
      'api_key': _apikey,
      'language': _language,
    });

    final resp = await http.get(url);
    final decodedData = json.decode(resp.body);

    final movies = new Movies.fromJsonList(decodedData['results']);
    //print(movies);
    //print(decodedData['results']);
    return movies.items;
  }
}
