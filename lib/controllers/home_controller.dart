import 'package:get/get.dart';
import 'package:on_audio_query/on_audio_query.dart';

class HomeController extends GetxController {

//============================= Variables ======================================
  final OnAudioQuery _audioQuery  = OnAudioQuery();
  List<SongModel>? audioList;

//============================= Methods ========================================
  Future<void> _getAllAudio() async {
    var hasPermission = await _audioQuery.checkAndRequest(retryRequest: true);
    if(hasPermission) {
      final result = await _audioQuery.querySongs();
      audioList = result;
      update();
    }
  }
//============================= Life Cycles ====================================
  @override
  void onInit() {
    _getAllAudio();
    super.onInit();
  }

}