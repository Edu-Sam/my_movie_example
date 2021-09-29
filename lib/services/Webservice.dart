
import 'dart:convert';
import 'package:my_movie_example/model/movie.dart';
import 'package:http/http.dart' as http;
class Webservice {
  Future<List<Movie>> fetchMovies(String keyword) async {
    //String url = "http://www.omdbapi.com/?s=$keyword&apikey=eb0d5538";
    String url="https://www.omdbapi.com/?i=tt3896198&apikey=828c275c";
   // String url="https://www.omdbapi.com/?i=$keyword&apikey=828c275c";
    final response = await http.get(Uri.parse(url));
    if(response.statusCode == 200) {
      final body = jsonDecode(response.body);
      var json = body as List;
      return json.map((movie) => Movie.fromJson(movie)).toList();
    } else {
      throw Exception("Unable to perform request!");
    }
  }
}