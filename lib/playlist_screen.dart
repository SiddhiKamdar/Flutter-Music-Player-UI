import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_player/main_screen.dart';

import 'currently_playing.dart';

class MusicItem {
  final String imageUrl;
  final String songName;
  final String artist;

  MusicItem({
    required this.imageUrl,
    required this.songName,
    required this.artist,
  });
}

class Playlist extends StatelessWidget {
  final List<MusicItem> musicList = [
    MusicItem(
      imageUrl:
          'https://c.saavncdn.com/936/Elemental-Unknown-2023-20230615054107-500x500.jpg',
      songName: 'Steal the Show',
      artist: 'Lauv',
    ),
    MusicItem(
      imageUrl:
          'https://cdns-images.dzcdn.net/images/cover/71486b899e2ed4a0e526be4dbc6204c0/500x500.jpg',
      songName: 'Christmas Lights',
      artist: 'Zach Seabaugh',
    ),
    MusicItem(
      imageUrl:
          'https://i1.sndcdn.com/artworks-000347240793-52bj2b-t500x500.jpg',
      songName: 'Euphoria',
      artist: 'Junkook',
    ),
    MusicItem(
      imageUrl:
          'https://i.scdn.co/image/ab67616d0000b273c4bc5016131d08453c5c9e4f',
      songName: 'My Stupid Heart',
      artist: 'Walk Of The Earth',
    ),
    MusicItem(
      imageUrl:
          'https://assets.audiomack.com/crystalbejar/d2885c67ac1bdf8fa6d1840f01811fb3.jpeg?width=1000&height=1000&max=true',
      songName: 'Changes',
      artist: 'Xxxtentation',
    ),
    MusicItem(
      imageUrl:
          'https://i.scdn.co/image/ab67616d0000b27397e971f3e53475091dc8d707',
      songName: 'Dandelions',
      artist: 'Ruth B.',
    ),
    MusicItem(
      imageUrl:
          'https://i.scdn.co/image/ab67616d0000b2734e5df11b17b2727da2b718d8',
      songName: 'See You Again',
      artist: 'Wiz Khalifa (ft. Charlie Puth)',
    ),
    MusicItem(
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/en/5/51/Lana_Del_Rey_-_Say_Yes_to_Heaven.png',
      songName: 'Say Yes To Heaven',
      artist: 'Lana Del Rey',
    ),
    MusicItem(
      imageUrl:
          'https://images.genius.com/4a6a06f7e361703062b0db46d0e4ec36.1000x1000x1.png',
      songName: 'august',
      artist: 'Taylor Swift',
    ),
    MusicItem(
      imageUrl:
          'https://c.saavncdn.com/751/Co2-English-2023-20230620030209-500x500.jpg',
      songName: 'Co2',
      artist: 'Prateek Kuhad',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color.fromRGBO(10, 6, 28, 1),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: EdgeInsets.all(8),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Main_Screen()));
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(
                    'ALBUMS',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontFamily: 'Teko',
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: musicList.length,
                itemBuilder: (context, index) {
                  return Container(
                      child: MusicGridItem(musicItem: musicList[index]));
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    ));
  }
}

class CustomBottomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Color.fromRGBO(10, 6, 28, 1),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(
            CupertinoIcons.music_albums_fill,
            color: Colors.white70,
            size: 30,
          ),
          Icon(
            Icons.favorite,
            color: Colors.white70,
            size: 30,
          ),
          InkWell(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Main_Screen()));
            },
            child: Icon(
              Icons.home_sharp,
              color: Colors.white70,
              size: 30,
            ),
          ),
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color.fromRGBO(159, 50, 159, 1.0)),
            child: Icon(
              Icons.queue_music,
              color: Colors.white,
              size: 30,
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => Now_Playing(
                    imageUrl:
                        'https://c.saavncdn.com/936/Elemental-Unknown-2023-20230615054107-500x500.jpg',
                    songName: 'Steal the Show',
                    artist: 'Lauv'),
              ));
            },
            child: Icon(
              Icons.headphones_outlined,
              color: Colors.white70,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}

class MusicGridItem extends StatelessWidget {
  final MusicItem musicItem;

  MusicGridItem({required this.musicItem});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        height: 1000,
        child: ClipRRect(
          borderRadius: BorderRadius.vertical(
              top: Radius.circular(15), bottom: Radius.circular(15)),
          child: Stack(
            children: [
              Image.network(
                musicItem.imageUrl,
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Positioned(
                bottom: 5,
                right: 5,
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Now_Playing(
                              artist: musicItem.artist,
                              imageUrl: musicItem.imageUrl,
                              songName: musicItem.songName,
                            )));
                  },
                  child: Container(
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: Icon(
                      Icons.play_arrow_rounded,
                      color: Colors.black,
                      size: 25,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 5,
                right: 5,
                child: Container(
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: Icon(
                    Icons.more_vert,
                    color: Colors.black,
                    size: 25,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
