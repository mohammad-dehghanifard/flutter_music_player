import 'package:flutter/material.dart';
import 'package:flutter_music_player/views/home_view.dart';
import 'package:flutter_music_player/views/play_list_view.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {

        },
        items: const [
          BottomNavigationBarItem(
              label: "Home",
              icon: Icon(Icons.home)
          ),
          BottomNavigationBarItem(
              label: "PlayList",
              icon: Icon(Icons.featured_play_list)
          )
        ],
      ),
      body: const IndexedStack(
        children: [
          HomeView(),
          PlayListView(),
        ],
      ),
    );
  }
}
