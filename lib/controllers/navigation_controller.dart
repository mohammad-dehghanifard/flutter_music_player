import 'package:get/get.dart';

class NavigationController extends GetxController {
//============================= Variables ======================================
  int selectedIndex = 0;
//============================= Methods ========================================
  void changeView(int newIndex){
    selectedIndex = newIndex;
    update();
  }
}