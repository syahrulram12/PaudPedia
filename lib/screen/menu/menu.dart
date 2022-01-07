import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:path_provider/path_provider.dart';

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
                      width: 200,
                    )),
                Positioned(
                    top: height / 4.4,
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
                          // Positioned(
                          //     top: 2,
                          //     child: TextButton(
                          //         onPressed: () => showDialog<String>(
                          //               context: context,
                          //               builder: (BuildContext context) =>
                          //                   AlertDialog(
                          //                 title:
                          //                     const Text('AlertDialog Title'),
                          //                 content: const Text(
                          //                     'AlertDialog description'),
                          //                 actions: <Widget>[
                          //                   TextButton(
                          //                     onPressed: () => Navigator.pop(
                          //                         context, 'Cancel'),
                          //                     child: const Text('Cancel'),
                          //                   ),
                          //                   TextButton(
                          //                     onPressed: () => Navigator.pop(
                          //                         context, 'OK'),
                          //                     child: const Text('OK'),
                          //                   ),
                          //                 ],
                          //               ),
                          //             ),
                          //         child: TabItem(
                          //           ImageUrl:
                          //               'assets/icons/menu/icon_menu-02.png',
                          //           width: 90,
                          //           heigth: 90,
                          //         )))
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
                          height: 400,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Container(
                              child: Column(
                            children: [
                              Row(children: [
                                Flexible(
                                    child: MenuItem(
                                        ImageUrl:
                                            'assets/icons/menu/icon_menu-03.png',
                                        width: 100,
                                        height: 100)),
                                Flexible(
                                  child: MenuItem(
                                      ImageUrl:
                                          'assets/icons/menu/icon_menu-04.png',
                                      width: 100,
                                      height: 100),
                                ),
                                Flexible(
                                    child: MenuItem(
                                        ImageUrl:
                                            'assets/icons/menu/icon_menu-05.png',
                                        width: 100,
                                        height: 100))
                              ]),
                              Row(children: [
                                Expanded(
                                    child: MenuItem(
                                        ImageUrl:
                                            'assets/icons/menu/icon_menu-06.png',
                                        width: 100,
                                        height: 100)),
                                Expanded(
                                  child: MenuItem(
                                      ImageUrl:
                                          'assets/icons/menu/icon_menu-07.png',
                                      width: 100,
                                      height: 100),
                                ),
                                Expanded(
                                    child: MenuItem(
                                        ImageUrl:
                                            'assets/icons/menu/icon_menu-08.png',
                                        width: 100,
                                        height: 100))
                              ]),
                              Row(children: [
                                Flexible(
                                    child: MenuItem(
                                        ImageUrl:
                                            'assets/icons/menu/icon_menu-09.png',
                                        width: 100,
                                        height: 100)),
                                Flexible(
                                  child: MenuItem(
                                      ImageUrl:
                                          'assets/icons/menu/icon_menu-10.png',
                                      width: 100,
                                      height: 100),
                                ),
                                Flexible(
                                    child: MenuItem(
                                        ImageUrl:
                                            'assets/icons/menu/icon_menu-11.png',
                                        width: 100,
                                        height: 100))
                              ]),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Flexible(
                                        child: MenuItem(
                                            ImageUrl:
                                                'assets/icons/menu/icon_menu-12.png',
                                            width: 100,
                                            height: 100)),
                                  ]),
                            ],
                          )))
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
            child: Image.asset(
              ImageUrl,
              fit: BoxFit.cover,
            ),
          ),
        ));
  }
}
