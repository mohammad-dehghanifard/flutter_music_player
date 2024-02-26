import 'package:get/get.dart';
import 'package:just_audio/just_audio.dart';

class AudioDetailController extends GetxController {
  final Uri uri;
  AudioDetailController(this.uri);
//============================= Variables ======================================
  final AudioPlayer audioPlayer = AudioPlayer();
  Duration currentDuration = const Duration();
  Duration? duration = const Duration();

//============================= Methods ========================================

  Future<void> _getAudio() async {
   duration = await audioPlayer.setAudioSource(AudioSource.uri(uri));
    audioPlayer.positionStream.listen((event) {
      currentDuration = event;
      update();
    });
    update();
  }

  void playAndStopAudio() {
    if(audioPlayer.playing) {
      audioPlayer.stop();
      update();
    } else {
      audioPlayer.play();
      update();
    }
  }

  String _formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    return "$twoDigitMinutes:$twoDigitSeconds";
  }

  String getDuration(){
    return _formatDuration(duration!);
  }

  String getCurrentDuration(){
    return _formatDuration(currentDuration);
  }

  double getSliderValue(){
    if(duration != null && duration!.inSeconds > 0) {
      return currentDuration.inSeconds / (duration?.inSeconds ?? 1);
    } else {
      return 0.0;
    }

  }

  void fastForwardOrBack10Seconds ({bool forward = true}) {
   final currentPosition = audioPlayer.position;
   final Duration newPosition;
   if(forward){
     newPosition = currentPosition + const Duration(seconds: 10);
   } else {
     newPosition = currentPosition - const Duration(seconds: 10);
   }
   audioPlayer.seek(newPosition);
  }


//============================= Life Cycles ====================================
  @override
  void onInit() {
    _getAudio();
    super.onInit();
  }

  @override
  void onClose() {
    audioPlayer.dispose();
    super.onClose();
  }


}