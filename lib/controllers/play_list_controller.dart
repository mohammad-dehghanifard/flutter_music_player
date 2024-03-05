import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:on_audio_query/on_audio_query.dart';

class PlayListController extends GetxController {
//============================= Variables ======================================
  final OnAudioQuery _audioQuery = OnAudioQuery();
  final TextEditingController playListName = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  List<PlaylistModel>? playLists;

//============================= Methods ========================================
  Future<void> createPlayList() async {
    if(formKey.currentState!.validate()){
      await _audioQuery.createPlaylist(playListName.text);
      Get.back();
      playLists?.clear();
      _fetchAllPlayList();
    }
  }
  Future<void> _fetchAllPlayList() async {
    final result = await _audioQuery.queryPlaylists();
    playLists = result;
    update();
  }
  Future<void> removePlayList(int id) async {
     await _audioQuery.removePlaylist(id);
     playLists?.removeWhere((it) => it.id == id);
     update();
  }

  String? validatePlayListName(String? value) {
    if(value!.isEmpty) {
      return "لطفا یک نام برای لیست پخش خود وارد کنید";
    }
    return null;
  }
//============================= Life Cycles ====================================
  @override
  void onInit() {
    _fetchAllPlayList();
    super.onInit();
  }
}
