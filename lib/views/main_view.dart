import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_music_player/controllers/navigation_controller.dart';
import 'package:flutter_music_player/views/home_view.dart';
import 'package:flutter_music_player/views/play_list_view.dart';
import 'package:flutter_music_player/widgets/add_play_list_dialog.dart';
import 'package:get/get.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetBuilder<NavigationController>(
      init: NavigationController(),
      builder: (controller) {
        return Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            onTap: (value) => controller.changeView(value),
            selectedItemColor: context.theme.colorScheme.primary,
            currentIndex: controller.selectedIndex,
            selectedLabelStyle: context.textTheme.labelLarge,
            unselectedLabelStyle: context.textTheme.labelLarge,
            items: const [
              BottomNavigationBarItem(
                  label: "Home",
                  icon: Icon(CupertinoIcons.house_fill)
              ),
              BottomNavigationBarItem(
                  label: "PlayList",
                  icon: Icon(CupertinoIcons.music_note_list)
              )
            ],
          ),
          floatingActionButton: controller.selectedIndex == 1? FloatingActionButton(
            onPressed: () {
             showDialog(context: context, builder: (context) => AddPlayListDialog());
            },
            child: const Icon(Icons.add,color: Colors.white,) ,
          ) : null,
          body:  SafeArea(
            child: IndexedStack(
              index: controller.selectedIndex,
              children: const [
                HomeView(),
                PlayListView(),
              ],
            ),
          ),
        );
      }
    );
  }
}
