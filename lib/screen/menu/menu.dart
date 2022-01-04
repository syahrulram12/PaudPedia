import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:path_provider/path_provider.dart';

class HomeMenu extends StatefulWidget {
  @override
  _HomeMenuState createState() => _HomeMenuState();
}

class _HomeMenuState extends State<HomeMenu> {
  // AudioCache audioCache = AudioCache();
  // AudioPlayer audioPlayer = AudioPlayer();
  // PlayerState playerState = PlayerState.PAUSED;
  // String? localFilePath;
  // String? localAudioCacheURI;

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();

  //   audioCache = AudioCache(fixedPlayer: audioPlayer);
  //   audioPlayer.onPlayerStateChanged.listen((PlayerState s) {
  //     setState(() {
  //       playerState = s;
  //     });
  //   });
  // }

  // @override
  // void dispose() {
  //   // TODO: implement dispose
  //   super.dispose();
  //   audioPlayer.release();
  //   audioPlayer.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/cover_paudpedia_mennu-01.png"),
              fit: BoxFit.fill)),
    ));
  }
}
