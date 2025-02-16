import 'dart:async';

import 'package:music_app/data/repository/repository.dart';

import '../../data/model/song.dart';

class MusicAppViewModel{
  StreamController<List<Song>> songSteam = StreamController();

  void loadSongs (){
    final repository = DefaultRepository();
    repository.loadData().then((value) => songSteam.add(value!));

  }
}