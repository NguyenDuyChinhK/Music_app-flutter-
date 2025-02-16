import 'dart:convert';

<<<<<<< HEAD
=======
import 'package:flutter/services.dart';

>>>>>>> 49567f5 (Second commit)
import '../model/song.dart';
import 'package:http/http.dart' as http;
abstract interface class DataSource{
  Future<List<Song>?> loadData();
}
<<<<<<< HEAD
class RemoteDataSource implements DataSource{
  @override
  Future<List<Song>?> loadData() async{
    final url = 'https://thantrieu.com/resources/braniumapis/songs.json';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    if(response.statusCode ==  200){
      final bodyContent = utf8.decode(response.bodyBytes);
      var songWrapper = jsonDecode(bodyContent) as Map;
      var songList = songWrapper['songs'] as List;
      List<Song> songs = songList.map((song) => Song.fromjson(song)).toList();
      return songs;
    }else{
      return null;gi
    }
  }

}

class LocalDataSource implements DataSource{
  @override
  Future<List<Song>?> loadData() {
    // TODO: implement loadData
    throw UnimplementedError();
=======


class LocalDataSource implements DataSource{
  @override
  Future<List<Song>?> loadData() async{
    final String response = await rootBundle.loadString('assets/songs.json');
    final jsonBody = jsonDecode(response) as Map;
    final songList = jsonBody['songs'] as List;
    List<Song> songs = songList.map((song) => Song.fromjson(song)).toList();

    return songs;

>>>>>>> 49567f5 (Second commit)
  }

}