import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Video {
  String thumbnail;
  String time;
  String channelImage;
  String channelInfo;
  String name;

  Video(
      {required this.thumbnail,
      required this.time,
      required this.channelImage,
      required this.name,
      required this.channelInfo});
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Video> videos = [
    Video(
        thumbnail: 'thumbnail-4.jpg',
        time: '11:44',
        channelImage: 'channel-4.jpg',
        name: 'Programming a Boss Battle For my Game',
        channelInfo: 'Dani - 6.5M views - 1 year ago'),
    Video(
        thumbnail: 'thumbnail-5.jpg',
        time: '2:42',
        channelImage: 'channel-5.jpg',
        name:
            'شهادات حية لناجين من جحيم الحرائق التي شهدتها تيزي وزو .. شاهدوا',
        channelInfo: 'ELBILAD TV - 860K views - 2 days ago'),
    Video(
        thumbnail: 'thumbnail-6.jpg',
        time: '9:22',
        channelImage: 'channel-6.jpg',
        name: 'La plus grosse tornade de tous les temps !',
        channelInfo: 'Dr Nozman - 636K views - 3 days ago'),
  ];
  List<String> subs = ['Among Us', 'Indie games', 'Grand Theft Auto V'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: SafeArea(
        child: ListView.builder(
          itemCount: videos.length + 2,
          itemBuilder: (context, index) {
            if (index == 0) {
              return Container(
                decoration: BoxDecoration(
                    color: Colors.grey[875],
                    border: Border(
                        bottom:
                            BorderSide(color: Color(0xFF424242), width: 2.0))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 5.0),
                  child: Container(
                    child: Row(
                      children: <Widget>[
                        Expanded(
                            flex: 2,
                            child: Image.asset('assets/youtube.jpg',
                                fit: BoxFit.cover)),
                        Expanded(
                          flex: 6,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 0, horizontal: 8.0),
                                  child: Icon(
                                    Icons.cast,
                                    color: Colors.white,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 0, horizontal: 8.0),
                                  child: Icon(
                                    Icons.notifications,
                                    color: Colors.white,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 0, horizontal: 8.0),
                                  child: Icon(
                                    Icons.search,
                                    color: Colors.white,
                                  ),
                                ),
                                Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 0, horizontal: 8.0),
                                    child: CircleAvatar(
                                      radius: 15,
                                      backgroundImage:
                                          AssetImage('assets/pdp.jpg'),
                                    ))
                              ]),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            } else if (index == 1) {
              return Container(
                margin: EdgeInsets.fromLTRB(0, 3, 0, 3),
                child: SizedBox(
                  height: 47,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: subs.length + 2,
                    itemBuilder: (context, index2) {
                      if (index2 == 0) {
                        return Row(
                          children: <Widget>[
                            Card(
                              color: Colors.grey[800],
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 8.0, horizontal: 10.0),
                                child: Row(
                                  children: <Widget>[
                                    Icon(Icons.explore, color: Colors.white),
                                    SizedBox(width: 5),
                                    Text(
                                      'Explore',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 0.5,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 8.0),
                            SizedBox(
                                width: 2.0,
                                height: 40,
                                child: Container(
                                  color: Colors.grey[800],
                                )),
                            SizedBox(width: 8.0),
                          ],
                        );
                      } else if (index2 == 1) {
                        return Card(
                          color: Colors.white,
                          shape: StadiumBorder(
                            side: BorderSide(
                              color: Color(0xFF616161),
                              width: 1.0,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 2.0, horizontal: 15.0),
                            child: Row(
                              children: <Widget>[
                                Text(
                                  'All',
                                  style: TextStyle(
                                      letterSpacing: 0.5, fontSize: 16.0),
                                )
                              ],
                            ),
                          ),
                        );
                      } else {
                        return Card(
                          color: Colors.grey[800],
                          shape: StadiumBorder(
                            side: BorderSide(
                              color: Color(0xFF616161),
                              width: 1.0,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 2.0, horizontal: 15.0),
                            child: Row(
                              children: <Widget>[
                                Text(
                                  subs[index2 - 2],
                                  style: TextStyle(
                                      color: Colors.white,
                                      letterSpacing: 0.5,
                                      fontSize: 16.0),
                                )
                              ],
                            ),
                          ),
                        );
                      }
                    },
                  ),
                ),
              );
            } else {
              return Column(
                children: <Widget>[
                  Container(
                      height: 210,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        image:
                            AssetImage('assets/${videos[index - 2].thumbnail}'),
                        fit: BoxFit.cover,
                      )),
                      child: Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 5, 10),
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: Container(
                              color: Colors.black,
                              padding: EdgeInsets.symmetric(
                                  vertical: 2.0, horizontal: 5.0),
                              child: Text(
                                videos[index - 2].time,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 0.5,
                                ),
                              ),
                            ),
                          ))),
                  ListTile(
                    contentPadding: EdgeInsets.fromLTRB(10, 5, 10, 10),
                    leading: CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage(
                            'assets/${videos[index - 2].channelImage}')),
                    title: Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                      child: Text(
                        videos[index - 2].name,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ),
                    subtitle: Text(
                      videos[index - 2].channelInfo,
                      style: TextStyle(
                        fontSize: 16.0,
                        letterSpacing: 0.5,
                        color: Colors.grey[500],
                      ),
                    ),
                  )
                ],
              );
            }
          },
        ),
      ),
    );
  }
}
