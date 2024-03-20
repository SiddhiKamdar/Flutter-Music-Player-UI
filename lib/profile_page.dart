import 'package:flutter/material.dart';
import 'package:music_player/main_screen.dart';

class Profile extends StatelessWidget{
  final List icons = [
    Icons.perm_identity_rounded,
    Icons.favorite,
    Icons.play_circle_outline_rounded,
    Icons.access_time
  ];
  final List<String> itemNames = [
    'Edit Profile',
    'Favorites',
    'Listen Later',
    'History',
  ];
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
                              padding: EdgeInsets.all(8),
                              child: InkWell(
                                onTap: (){
                                  Navigator.of(context).push(
                                      MaterialPageRoute(builder: (context) => Main_Screen())
                                  );
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
                                    Icons.sunny,
                                    color: Colors.white,
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(8),
                                  child: Icon(
                                    Icons.settings,
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
                        child:Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Color.fromRGBO(248, 142, 248, 1.0),  // Replace with your desired color
                              width: 3.0,  // Adjust the border width as needed
                            ),
                          ),
                          margin: const EdgeInsets.only(left: 20),
                          child: const CircleAvatar(
                            radius: 100,
                            backgroundImage: NetworkImage(
                                'https://cdn.dribbble.com/users/673318/screenshots/13978723/media/b206fbf045ded80effd4ee5aedd0f4b9.png?resize=840x630&vertical=center'                ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 20.0,top:10),
                        child:Container(
                          child: Column(
                            children: [
                              Text(
                                'Someone',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top:8),
                                child: Text(
                                  '0123456789',
                                  style: TextStyle(
                                      color: Color.fromRGBO(137, 140, 140, 1.0),
                                      fontSize: 15
                                  ),
                                ),
                              ),



                            ],
                          ),
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(left: 20.0, right: 20.0,top:10),
                          child: Container(
                            height: 250,
                            child: ListView.builder(
                              itemCount: icons.length,
                              itemBuilder: (context, index) {
                                return ListTile(
                                  contentPadding: EdgeInsets.only(left: 20, right: 20, bottom: 8),
                                  leading: Icon(
                                    icons[index],
                                    color: Colors.white,
                                  ),
                                  title: Text(
                                    itemNames[index],
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  trailing: Icon(
                                    Icons.chevron_right,
                                    color: Colors.white,
                                  ),
                                  tileColor: Colors.transparent,
                                  shape: Border(
                                    bottom: BorderSide(
                                      color: Colors.white,
                                      width: 0.5,
                                    ),
                                  ),
                                );
                              },
                            ),
                          )
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          bottomNavigationBar: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 70,
                child: Text(
                  'Version 0.0.0',
                  style: TextStyle(
                    fontSize: 15,
                    color: Color.fromRGBO(137, 140, 140, 1.0),
                  ),
                )
              )
            ],
          ),
        )
    );
  }
}