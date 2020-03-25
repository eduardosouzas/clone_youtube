import 'package:clone_youtube/models/Video.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

const CHAVE_YOUTUBE_API = "AIzaSyAt8GvcA2PrDyRQ1eDUR0NGVz0nTMZ-WAU";
const ID_CHANNEL = "UC6HSgv198kjUi7qypT7ff_g";
const URL_BASE = "https://www.googleapis.com/youtube/v3/";


class Api {
  Future<List<Video>> pesquisar(String pesquisa) async {
    http.Response response = await http.get(
        URL_BASE + "search"
            "?part=snippet"
            "&type=video"
            "&maxResults=20"
            "&order=date"
            "&key=$CHAVE_YOUTUBE_API"
            "&channelId=$ID_CHANNEL"
            "&q=$pesquisa"
    );

    if (response.statusCode == 200) {
      Map<String, dynamic> dadosJson = json.decode(response.body);

      return dadosJson["items"].map<Video>(
              (map) {
            return Video.fromJson(map);
          }
      ).toList();
    }
  }
}