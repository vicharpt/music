import 'dart:convert';
import 'package:http/http.dart' as http;

class Musics {
  String foto_album, artis, song_title;

  Musics({this.foto_album, this.artis, this.song_title});

  static Future<Music> connectAPI()

  // factory Music.createMusic(Map<String, dynamic> object) {
  //   return Music(
  //       foto_album: object["foto_album"],
  //       artis: object["artis"],
  //       song_title: object["song_title"]);
  // }

  // static Future<void> fectData(String query) async {
  //   String apiURL = "http://localhost:3000/music";
  //   var apiResult = await http.get(Uri.parse(apiURL));
  //   var jsonObject = json.decode(apiResult.body);
  // }
}
