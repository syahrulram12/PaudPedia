import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:path_provider/path_provider.dart';
import 'package:paudpedia_kemendikbud/screen/menu/menu_detail.dart';

class HomeMenu extends StatefulWidget {
  @override
  _HomeMenuState createState() => _HomeMenuState();
}

class _HomeMenuState extends State<HomeMenu> {
  AudioCache audioCache = AudioCache();
  AudioPlayer audioPlayer = AudioPlayer();
  PlayerState playerState = PlayerState.PLAYING;
  String? localFilePath;
  String? localAudioCacheURI;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    audioCache = AudioCache(fixedPlayer: audioPlayer);
    audioCache.loop('audio/audio-frontpage.mp3');
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    audioPlayer.release();
    audioPlayer.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/Asset_2.png"),
                    fit: BoxFit.cover)),
            child: Container(
                child: Stack(
              children: [
                Positioned(
                    top: (height / 5) / 6,
                    right: (width / 5.5) / 3,
                    child: Image.asset(
                      'assets/icons/icon-02.png',
                      width: width / 2,
                    )),
                Positioned(
                    top: height / 4.1,
                    right: width / 2.5,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24),
                      child: Row(
                        children: [
                          Positioned(
                            child: TextButton(
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) =>
                                      AlertDialog(
                                    title: const Text('AlertDialog Title'),
                                    content:
                                        const Text('AlertDialog description'),
                                    actions: <Widget>[
                                      TextButton(
                                        onPressed: () =>
                                            Navigator.pop(context, 'Cancel'),
                                        child: const Text('Cancel'),
                                      ),
                                      TextButton(
                                        onPressed: () =>
                                            Navigator.pop(context, 'OK'),
                                        child: const Text('OK'),
                                      ),
                                    ],
                                  ),
                                );
                              },
                              child: TabItem(
                                ImageUrl: 'assets/icons/menu/icon_menu-01.png',
                                heigth: 125,
                                width: 120,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )),
                Positioned(
                  top: height / 3,
                  left: (width / 6) / 2,
                  child: Stack(
                    children: [
                      Container(
                          width: width / 1.2,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(28),
                          ),
                          child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 5),
                              child: MenuBelajar()))
                    ],
                  ),
                ),
              ],
            ))

            //   child: SizedBox(
            // width: 100,
            ));
  }
}

class TabItem extends StatelessWidget {
  final String ImageUrl;
  final double heigth;
  final double width;
  final Function()? OnTabClick;

  const TabItem(
      {Key? key,
      required this.ImageUrl,
      this.OnTabClick,
      required this.heigth,
      required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: heigth,
      // decoration: BoxDecoration(border: Border.all(width: 2)),
      margin: EdgeInsets.symmetric(horizontal: 5),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(13),
        child: Image.asset(
          ImageUrl,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final String ImageUrl;
  final double width;
  final double height;
  final Function()? OnMenuClick;

  const MenuItem(
      {Key? key,
      required this.ImageUrl,
      this.OnMenuClick,
      required this.width,
      required this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        height: height,
        // decoration: BoxDecoration(border: Border.all(width: 2)),
        margin: EdgeInsets.symmetric(horizontal: 5),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(13),
          child: GestureDetector(
            onTap: OnMenuClick,
            child: Image.asset(
              ImageUrl,
              fit: BoxFit.cover,
            ),
          ),
        ));
  }
}
