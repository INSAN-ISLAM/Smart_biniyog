import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:smart_biniyog/App/data/model/return_variable.dart';
import 'package:smart_biniyog/App/data/service/network_caller.dart';
import 'package:smart_biniyog/App/data/urls/urls.dart';

class VariableTermController extends GetxController{



  @override
  void onInit() {
    getShortTermProcect();
    super.onInit();
  }

  bool shortProjectProgress = false;
 // ReturnModel ReturnProjectDataModel = ReturnModel();


  Future<bool> getShortTermProcect() async {
    shortProjectProgress = true;
    update();
    final response = await NetworkUtils().getMethod(
      Urls.shorttermprojecturl,
    );
    print("short_response:$response");
    shortProjectProgress = false;
    if (response != null) {
     // ReturnProjectDataModel = ReturnModel.fromJson(response);

      update();
      return true;
    } else {
      update();
      return false;
    }
  }


}