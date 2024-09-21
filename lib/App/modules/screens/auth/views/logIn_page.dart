import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:smart_biniyog/App/Constant/Colors.dart';
import 'package:smart_biniyog/App/modules/Screens/auth/controllers/auth_controller.dart';
import 'package:smart_biniyog/App/modules/Widgets/AppElevatedButtonWidget.dart';
import 'package:smart_biniyog/App/modules/Widgets/AppTextFieldWidget.dart';
import 'package:smart_biniyog/App/modules/utils/TextStyles.dart';
import 'package:smart_biniyog/App/modules/utils/snackbar_message.dart';
import 'package:smart_biniyog/App/routes/route_names.dart';

class LogInSreen extends GetView<LogInScreenController> {
  LogInSreen({Key? key}) : super(key: key);

  final TextEditingController _emailETController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool m = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Column(
          children: [


            GetBuilder<LogInScreenController>(builder: (LogInScreenController) {
              return LogInScreenController.LogInImageProgress
                  ? const Center(
                child: CircularProgressIndicator(),
              )
                  : RefreshIndicator(
                onRefresh: () async {
                  LogInScreenController.getLogInImage();
                },
                child: Container(
                      width: double.infinity,
                      child: Center(
                        child: Image.asset(
                          'assets/images/demo_pic.jpg',
                          height: 350,
                          //width: double.infinity,
                          fit: BoxFit.fill,
                        ),
                      ),


                ),
              );
            }),

            // Container(
            //   width: double.infinity,
            //   child: Center(
            //     child: Image.asset(
            //       'assets/images/demo_pic.jpg',
            //       height: 400,
            //       //width: double.infinity,
            //       fit: BoxFit.fill,
            //     ),
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Center(
                      child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'SMART ',
                        style: TitleTextStyle.copyWith(
                            color: greyColor, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'BINIYOG ',
                        style: TitleTextStyle.copyWith(
                            color: primaryColor, fontWeight: FontWeight.bold),
                      ),
                    ],
                  )),
                  AppTextFieldWidget(
                    controller: _emailETController,
                    hintText: 'Enter Phone Num or Email',
                    validator: (value) {
                      if (value?.isEmpty ?? true) {
                        return 'Enter your valid Phn Num Or email';
                      }
                      return null;
                    },
                  ),

                  SizedBox(
                    height: 20,
                  ),
                  GetBuilder<LogInScreenController>(
                      builder: (LogInScreenController) {
                    return Container(
                      height: 55,
                      width: 358,
                      color: Colors.white,
                      child: AppElevatedButton(
                        Color: primaryColor,
                        onTap: () async {
                          if (_formKey.currentState!.validate()) {
                           // Get.toNamed(RouteNames.phnEmailOtpScreen);
                           // // Get.toNamed(RouteNames.phnEmailOtpScreen);
                           // print(_emailETController.text.trim());
                            final result = await LogInScreenController.verifyEmailPhn(
                              _emailETController.text.trim(),

                            );
                   print(result);
                            if (result != null && result['status'] == 'true') {

                              Get.toNamed(RouteNames.phnEmailOtpScreen,
                                  arguments: {
                                    'email': _emailETController.text.trim()
                                  }
                                   );
                              showSnackBarMessage(
                                  context, 'OTP sent to the email address');
                            } else {
                              // showSnackBarMessage(
                              //     context, 'OTP sent failed. Try again.', true);


                           //  //   //String text = _emailETController.text;
                           //  //
                           //  //   // final result = await NetworkUtils().postMethod(
                           //  //   //   'https://test.smartbiniyog.com/api/client-v1/send-otp',
                           //  //   //   body: {
                           //  //   //     'contact': _emailETController.text.trim(),
                           //  //   //   },
                           //  //   // );
                           //  //   //
                           //  //   // if (result != null && result['status'] == 'true') {
                           //  //   //   Get.toNamed(RouteNames.phnEmailOtpScreen,
                           //  //   //       arguments: {'email':_emailETController.text}
                           //  //   //   );
                           //  //   //   showSnackBarMessage(
                           //  //   //       context, 'Registration successful!');
                           //  //   // } else {
                           //  //   //   showSnackBarMessage(context,
                           //  //   //       'Registration Failed! Try again', true);
                           //  //   // }
                             }




                          }




                        },
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

                        child: Center(
                          child: Text(
                            "Continue",
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                color: Color(0xFFFFFFFF),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                letterSpacing: 1.5,
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  }),

                  SizedBox(
                    height: 15,
                  ),
                  Center(
                      child: TextButton(
                          onPressed: () {
                             Get.toNamed(RouteNames.mainNavigationScreen);

                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(builder: (context) => MainBottomNavBar()));
                          },
                          child: Text(
                            "Skip for now",
                            style: SubTitleTextStyle,
                          ))),
//
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
