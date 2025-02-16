<<<<<<< HEAD
import 'package:flutter/material.dart';
import 'package:music_app/data/repository/repository.dart';

void main() async{
  var repository = DefaultReposity();
  var songs = await repository.loadData();
  if(songs != null){
    for(var song in songs){
      debugPrint(song.toString());
    }
  }
}

class MusicApp extends StatelessWidget {
  const MusicApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
=======
import 'package:flutter/cupertino.dart';
import 'package:music_app/ui/home/home.dart';

void main() => runApp(const MusicApp());
>>>>>>> 49567f5 (Second commit)
