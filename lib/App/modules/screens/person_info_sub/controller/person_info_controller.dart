import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:smart_biniyog/App/data/service/network_caller.dart';
import 'package:smart_biniyog/App/data/urls/urls.dart';
import 'package:http/http.dart' as http;

class PersonInfoController extends GetxController{

  NetworkUtils networkUtils=NetworkUtils();

  bool loginInProgress = false;

   profileUpdate() async {

    try{
      http.Response response= await networkUtils.profilepostMethod();
      print(response.statusCode);


    }catch(e){
      print(e);
    }



  }



















  //   final result = await NetworkUtils().postMethod(
  //     Urls.verifyEmailPhn,
  //     body: {
  //       'contact': _emailETController.text.trim(),
  //     },
  //   );
  //
  //   if (result != null && result['status'] == 'true') {
  //
  //     Get.toNamed(RouteNames.phnEmailOtpScreen,
  //               arguments: {'email': _emailETController.text.trim()}
  //
  //            );
  //     showSnackBarMessage(
  //         context, 'Registration successful!');
  //   } else {
  //     showSnackBarMessage(context,
  //         'Registration Failed! Try again', true);
  //  }
  //  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }




}