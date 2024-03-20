import 'package:flutter/material.dart';

class Now_Playing extends StatelessWidget{
  final String imageUrl;
  final String songName;
  final String artist;
  Now_Playing({
    required this.imageUrl,
    required this.songName,
    required this.artist,
  });
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(10, 6, 28, 1),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.white),
                          ),
                          padding: EdgeInsets.all(8),
                          child: InkWell(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(8),
                                child: Icon(
                                  Icons.share,
                                  color: Colors.white,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(8),
                                child: Icon(
                                  Icons.more_vert,
                                  size: 30,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Container(
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Image.network(
                          imageUrl,
                          height: 200,
                          width: 400,
                          fit: BoxFit.cover,
                        ),

                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0,top: 20),
                      child: Container(
                        height: 50,
                        width: 400,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(73, 72, 72, 1.0),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Center(
                          child: Text(
                            'ADS',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(8),
                                child: Icon(
                                  Icons.play_arrow_outlined,
                                  color: Color.fromRGBO(137, 140, 140, 1.0),
                                ),
                              ),
                              Text(
                                '161204 Plays',
                                style: TextStyle(
                                  color: Color.fromRGBO(137, 140, 140, 1.0)
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(8),
                                child: Icon(
                                  Icons.download_for_offline_outlined,
                                  color: Color.fromRGBO(137, 140, 140, 1.0),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(8),
                                child: Icon(
                                  Icons.person_add_alt,
                                  color: Color.fromRGBO(137, 140, 140, 1.0),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(8),
                                child: Icon(
                                  Icons.favorite_border_rounded,
                                  color: Color.fromRGBO(137, 140, 140, 1.0),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Text(
                                  songName,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15
                                  ),
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top:8,left: 15),
                                child: Text(
                                  artist,
                                  style: TextStyle(
                                      color: Color.fromRGBO(137, 140, 140, 1.0),
                                      fontSize: 13
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0,top: 20),
                      child: SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          thumbShape: RoundSliderThumbShape(enabledThumbRadius: 0.0),
                          overlayShape: RoundSliderOverlayShape(overlayRadius: 0.0),
                        ),
                        child: Slider(
                          value: 0.45,
                          onChanged: (double value) {

                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0,top: 20),
                      child: RichText(
                        text: TextSpan(
                          text: '01:25',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 14
                          ),
                          children: [
                            TextSpan(
                              text: '/03:46',
                              style: TextStyle(
                                color: Color.fromRGBO(137, 140, 140, 1.0),
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.only(left: 20.0, right: 20.0,top: 10),
                    //   child: Row(
                    //     mainAxisAlignment: MainAxisAlignment.center,
                    //     children:[
                    //       Container(
                    //         child: Icon(
                    //           Icons.fast_rewind_rounded,
                    //           color: Colors.white,
                    //           size: 50,
                    //         ),
                    //       ),
                    //       Container(
                    //         child: Icon(
                    //           Icons.pause_rounded,
                    //           color: Colors.white,
                    //           size: 50,
                    //         ),
                    //       ),
                    //       Container(
                    //         child: Icon(
                    //           Icons.fast_forward_rounded,
                    //           color: Colors.white,
                    //           size: 50,
                    //         ),
                    //       )
                    //     ],
                    //   ),
                    // ),
                    PlayPauseWidget(),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Icon(
                              Icons.settings,
                              color: Color.fromRGBO(137, 140, 140, 1.0),
                              size: 30,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Icon(
                              Icons.menu_open,
                              color: Color.fromRGBO(137, 140, 140, 1.0),
                              size: 30,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),

              ),
            )
          ],
        ),
      )
    );
  }
}

class PlayPauseWidget extends StatefulWidget {
  @override
  _PlayPauseWidgetState createState() => _PlayPauseWidgetState();
}

class _PlayPauseWidgetState extends State<PlayPauseWidget> {
  bool isPlaying = false; // Track the play/pause state

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Icon(
              Icons.skip_previous_outlined,
              color: Colors.white,
              size: 50,
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                // Toggle play/pause state
                isPlaying = !isPlaying;
              });
            },
            child: Container(
              child: isPlaying
                  ? Icon(
                Icons.pause_rounded,
                color: Colors.white,
                size: 50,
              )
                  : Icon(
                Icons.play_arrow_rounded,
                color: Colors.white,
                size: 50,
              ),
            ),
          ),
          Container(
            child: Icon(
              Icons.skip_next_outlined,
              color: Colors.white,
              size: 50,
            ),
          ),
        ],
      ),
    );
  }
}
