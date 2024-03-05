import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:on_audio_query/on_audio_query.dart';

class PlayListController extends GetxController {
//============================= Variables ======================================
  final OnAudioQuery _audioQuery = OnAudioQuery();
  final TextEditingController playListName = TextEditingController();
  List<PlaylistModel>? playLists;

//============================= Methods ========================================
  void createPlayList() { }
  Future<void> _fetchAllPlayList() async { }
//============================= Life Cycles ====================================
  @override
  void onInit() {
    _fetchAllPlayList();
    super.onInit();
  }
}
