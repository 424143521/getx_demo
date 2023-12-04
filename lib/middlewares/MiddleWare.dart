
import 'package:get/get.dart';

class MiddleWare {
  static observer(Routing routing) {
    if (routing.current == '/second' && !routing.isBottomSheet!) {
      Get.snackbar("Hi", "You are on second route");
    } else if (routing.current =='/third'){
      print('last route called');
    }
  }
}
