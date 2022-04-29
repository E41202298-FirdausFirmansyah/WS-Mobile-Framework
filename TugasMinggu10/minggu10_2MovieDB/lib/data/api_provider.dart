import 'dart:convert';
import 'package:http/http.dart' show Client, Response;
import 'package:minggu10_2/model/popular_movies.dart';

class ApiProvider {
  String apiKey = '7f74938d5b42a6a6aedc7fe83f131ed4';
  String baseUrl = 'https://api.themoviedb.org/3';

  Client client = Client();
  Future<PopularMovies> getPopularMovies() async {

    Response response =
    await client.get(Uri.parse('$baseUrl/movie/popular?api_key=$apiKey'));
    if (response.statusCode == 200) {
      return PopularMovies.fromJson(jsonDecode(response.body));
    } else {
      throw Exception(response.statusCode);
    }
  }
}