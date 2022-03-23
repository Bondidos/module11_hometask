
import 'package:flutter/material.dart';
import 'package:module11_hometask/widgets/map_view_widget.dart';
import 'package:module11_hometask/widgets/web_view_widget.dart';

import '../widgets/video_player_widget.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  var currentIndex = 0;
  var pages = <Widget>[const WebViewWidget(), const MapViewWidget(), const VideoPlayerWidget()];
  var colors = [
    Colors.blue,
    Colors.orangeAccent,
    Colors.green
  ];
  navigateTo(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: colors[currentIndex],
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        currentIndex: currentIndex,
        onTap: (index) => navigateTo(index),
        items: const [
          BottomNavigationBarItem(
            label: "WebView",
            icon: Icon(Icons.web),
          ),
          BottomNavigationBarItem(
            label: "Map",
            icon: Icon(Icons.map),
          ),
          BottomNavigationBarItem(
            label: "Video",
            icon: Icon(Icons.video_call),
          ),
        ],
      ),
      body: pages[currentIndex],
    );
  }
}