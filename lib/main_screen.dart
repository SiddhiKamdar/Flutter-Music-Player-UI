import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:music_player/currently_playing.dart';
import 'package:music_player/playlist_screen.dart';
import 'package:music_player/profile_page.dart';

class Main_Screen extends StatelessWidget {
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
  ];

  // var selInd = 0;
  // void selectedIndex(index){
  //   selInd = index;
  // }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(10, 6, 28, 1),
        body: Stack(children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 4,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Welcome To',
                                style: TextStyle(
                                    color: Colors.white54,
                                    fontSize: 12,
                                    fontFamily: 'Fedro'),
                              ),
                              Text(
                                'RADIO AVA',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontFamily: 'Teko'),
                              )
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.white)),
                          padding: EdgeInsets.all(8),
                          child: Icon(
                            Icons.wifi_tethering,
                            color: Colors.white,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Profile()));
                          },
                          child: Container(
                            margin: const EdgeInsets.only(left: 20),
                            child: const CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://cdn.dribbble.com/users/673318/screenshots/13978723/media/b206fbf045ded80effd4ee5aedd0f4b9.png?resize=840x630&vertical=center'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(100, 95, 124, 1),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.search, color: Colors.white54),
                          ),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Search in All',
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.menu_outlined,
                              color: Colors.white54,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: ImageSlider(),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20.0, right: 20.0, top: 20),
                    child: Row(
                      children: [
                        Expanded(
                          child: RichText(
                            text: TextSpan(
                              text: 'Hot ',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 18),
                              children: [
                                TextSpan(
                                  text: 'Music',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w100,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Spacer(),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Playlist(),
                            ));
                          },
                          child: Text(
                            'See all',
                            style: TextStyle(
                                color: Color.fromRGBO(159, 50, 159, 1.0),
                                fontSize: 16
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20.0, right: 20.0, top: 10),
                    child: Container(
                      height: 200.0,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: musicList.length,
                        itemBuilder: (context, index) {
                          return MusicItemCard(
                            imageUrl: musicList[index].imageUrl,
                            songName: musicList[index].songName,
                            artist: musicList[index].artist,
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]),
        bottomNavigationBar: CustomBottomNavigationBar(),
      ),
    );
  }
}

class ImageSlider extends StatefulWidget {
  @override
  _ImageSliderState createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  final List<String> imageAssetPaths = [
    'assets/images/cover1.jpg',
    'assets/images/cover2.jpg',
    'assets/images/cover3.jpg',
    'assets/images/cover4.jpg',
    'assets/images/cover5.jpg',
    // Add more asset paths as needed
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 260.0,
            autoPlay: true,
            enlargeCenterPage: true,
            aspectRatio: 16 / 9,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: Duration(milliseconds: 1000),
            viewportFraction: 0.8,
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
          items: imageAssetPaths.map((assetPath) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: AssetImage(assetPath),
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            );
          }).toList(),
        ),
        SizedBox(height: 10.0),
        // Adjust the spacing between the slider and dots
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            imageAssetPaths.length,
            (index) => buildDot(index),
          ),
        ),
      ],
    );
  }

  Widget buildDot(int index) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Container(
        width: 8.0,
        height: 8.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: _currentIndex == index ? Colors.white : Colors.grey,
        ),
      ),
    );
  }
}

class MusicItem {
  final String imageUrl;
  final String songName;
  final String artist;

  MusicItem(
      {required this.imageUrl, required this.songName, required this.artist});
}

class MusicItemCard extends StatelessWidget {
  final String imageUrl;
  final String songName;
  final String artist;

  MusicItemCard({
    required this.imageUrl,
    required this.songName,
    required this.artist,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => Now_Playing(
                  artist: this.artist,
                  imageUrl: this.imageUrl,
                  songName: this.songName,
                )));
      },
      child: Container(
        width: 120.0,
        margin: EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 150.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: DecorationImage(
                  image: NetworkImage(imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              songName,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Fedro',
                  color: Colors.white),
            ),
            Text(
              artist,
              style: TextStyle(fontFamily: 'Fedro', color: Colors.white),
            ),
          ],
        ),
      ),
    );
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
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color.fromRGBO(159, 50, 159, 1.0)),
            child: Icon(
              Icons.home_sharp,
              color: Colors.white,
              size: 30,
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => Playlist(),
              ));
            },
            child: Icon(
              Icons.queue_music,
              color: Colors.white70,
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
