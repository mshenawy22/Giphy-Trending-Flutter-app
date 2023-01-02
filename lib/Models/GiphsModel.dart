import 'dart:convert';

import '../Entities/giphy_trending.dart';
import 'base_model.dart';
import 'package:http/http.dart' as http;

const baseUrl = 'http://api.giphy.com/v1';
const apiKey = '6AAiytlk5hNB6BixO6EewODsia5MeRxv';
const integer = '5';
const offset = '2';

class  GiphsModel extends BaseModel {

   GiphyTrending? giphySearchAlbum;


  Future<GiphyTrending> fetchImages()  async {
    final response = await http.get(Uri.parse('$baseUrl/gifs/trending?api_key=${apiKey}&limit=${integer}&offset=${offset}/'));
    print ('response code ${response.statusCode}');
    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return GiphyTrending.fromJson(jsonDecode(response.body));
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }

  }

   searchImages(String searchString)  async {
    loadingStatus = LoadingStatusE.busy;
    final response = await http.get(Uri.parse('$baseUrl/gifs/search?api_key=${apiKey}&q=${searchString}&limit=${integer}&offset=${offset}/'));
    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      notifyListeners();
      giphySearchAlbum = GiphyTrending.fromJson(jsonDecode(response.body));
      loadingStatus = LoadingStatusE.idle;
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      loadingStatus = LoadingStatusE.error;
      throw Exception('Failed to load album');

    }



  }

  GiphsModel();
}