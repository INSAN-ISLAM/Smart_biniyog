import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class NavigatinController extends GetxController{

  int _selectedIndex = 0;

  int get selectedIndex => _selectedIndex;

  Future<void> changeIndex(int index) async {
    // if (index == 2 || index == 3) {
    //   if (await Get.find<AuthController>().checkAuthValidation() == false) {
    //     return;
    //   }
    // }
    _selectedIndex = index;
    update();
  }

  void backToHome() {
    if (selectedIndex != 0) {
      _selectedIndex = 0;
      update();
    }
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }




}