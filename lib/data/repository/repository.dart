import 'package:music_app/data/source/source.dart';

import '../model/song.dart';

abstract interface class Repository{
  Future<List<Song>?> loadData() ;
<<<<<<< HEAD

}
class DefaultReposity implements Repository{
  final _localDataSource = LocalDataSource();
  final _remoteDataSource = RemoteDataSource();
=======
}
class DefaultRepository implements Repository{
  final _localDataSource = LocalDataSource();

>>>>>>> 49567f5 (Second commit)

  @override
  Future<List<Song>?> loadData() async{
    List<Song> songs = [];
<<<<<<< HEAD
    await _remoteDataSource.loadData().then((remoteSongs){
      if(remoteSongs == null){
        _localDataSource.loadData().then((localSongs) {
          if(localSongs != null){
            songs.addAll(localSongs);
          }
        });
      }else{
        songs.addAll(remoteSongs);
      }
    });
=======
    await _localDataSource.loadData().then((localSongs) {
      if(localSongs != null){
        songs.addAll(localSongs);
      }
    });

>>>>>>> 49567f5 (Second commit)
    return songs;
  }
}