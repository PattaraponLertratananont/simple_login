import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class LoginController extends GetxController {
  RxString title1 = RxString("title 1");
  RxString title2 = RxString("title 2");

  @override
  void onInit() {
    super.onInit();
    print("onInit");
    Future.delayed(Duration(seconds: 5)).then((value) {
      print("Delay Success");
      title1.value = "คนผีทะเล";
    });
  }
}
