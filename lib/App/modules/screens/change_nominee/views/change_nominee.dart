import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_biniyog/App/modules/Widgets/AppElevatedButtonWidget.dart';
import 'package:smart_biniyog/App/modules/Widgets/AppTextFieldWidget.dart';
import 'package:smart_biniyog/App/modules/screens/change_nominee/controller/Change_Nominee.dart';
class ChangeNomineeScreen extends GetView<ChangeNomineeController> {
   ChangeNomineeScreen({Key? key}) : super(key: key);

  final TextEditingController _NameController = TextEditingController();

  final TextEditingController _phoneController = TextEditingController();

  final TextEditingController _NIDController = TextEditingController();

  final TextEditingController _RelationlController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Center(child: Text('Update Nominee Info')),),

        body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child:Form(
                key: _formKey,
                child: Column(
                  children: [

                    AppTextFieldWidget(
                      controller: _NameController,
                      hintText: 'Name',
                      validator: (value) {
                        if (value?.isEmpty ?? true) {
                          return 'Please enter your name';
                        }
                        return null;
                      },
                    ),

                    const SizedBox(height: 12),
                    AppTextFieldWidget(
                      controller: _phoneController,
                      hintText: 'phone Num',
                      validator: (value) {
                        if (value?.isEmpty ?? true) {
                          return 'Please enter your address';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 12),
                    AppTextFieldWidget(
                      controller: _NIDController,
                      hintText: 'NID',
                      validator: (value) {
                        if (value?.isEmpty ?? true) {
                          return 'Please enter your WhatsApp number';
                        }
                        return null;
                      },
                    ),

                    const SizedBox(height: 12),
                    AppTextFieldWidget(
                      controller: _RelationlController,
                      hintText: 'Relationship',
                      //suffixIcon: IconButton(onPressed: (){ }, icon: const Icon(Icons.calendar_month_sharp),),
                      validator: (value) {
                        if (value?.isEmpty ?? true) {
                          return 'Please enter your WhatsApp number';
                        }
                        return null;
                      },
                    ),


                    const SizedBox(height: 12),
                    Container(
                      height: 48,
                      width: 358,
                      child: AppElevatedButton(
                        Color: Colors.green,
                        onTap: () async {
                          // personInfoController.profileUpdate();
                          if (_formKey.currentState!.validate()) {
                            //
                            //   Map <String,dynamic>data= {
                            //     "name":  _nameController.text.trim(),
                            // "email":   _EmailController.text.trim(),
                            // "phone": _PhnNumController.text.trim(),
                            // //"address": "123 Elm Street, Springfield",
                            // "nid":    _DateBirthlController.text.trim(),
                            // "tin":  _TINController.text.trim(),
                            // //"image": "path/to/image.jpg",
                            // "nid_f":_nid_frontPartlController.text.trim(),
                            // "nid_b":     _nid_backlController.text.trim(),
                            // //"gender":gen,
                            // "client_type":_val.toString(),
                            // };
                            //   personInfoController.profileUpdate(data);
                            //
                            //
                            //
                            //
                            //
                            //   //  PersonInfoController.ProfileUpdate(
                            //   //   _nameController.text.trim(),
                            //   //   _EmailController.text.trim(),
                            //   //   _PhnNumController.text.trim(),
                            //   //   _DateBirthlController.text.trim(),
                            //   //   _TINController.text.trim(),
                            //   //   _nid_frontPartlController.text.trim(),
                            //   //   _nid_backlController.text.trim(),
                            //   //   _val.toString(),
                            //   // );
                            //
                            //   // if (result != null && result['status'] == 'true') {
                            //   //  print(result);
                            //   //
                            //   //   showSnackBarMessage(
                            //   //       context, 'OTP sent to the email address');
                            //   // } else {
                            //   //   showSnackBarMessage(
                            //   //       context, 'OTP sent failed. Try again.', true);
                            //   //
                            //   //
                            //   //
                            //   // }
                            //
                            //
                            //
                            //
                            //
                            //   // String text = _emailETController.text;
                            //   // print(arguments['email']);
                            //   //      final result = await NetworkUtils().postMethod(
                            //   //        'https://test.smartbiniyog.com/api/client-v1/submit-login',
                            //   //        body: {
                            //   //          'contact':arguments['email'].toString(),
                            //   //          'otp': _otpPinETController.text.trim(),
                            //   //        },
                            //   //      );
                            //   //      Get.toNamed(RouteNames.mainNavigationScreen);
                            //   // // print(result);
                            //   // //      if (result!= null && result['status'] == 'true') {
                            //   // //        Get.toNamed(RouteNames.mainNavigationScreen);
                            //   // //        showSnackBarMessage(
                            //   // //            context, 'Registration successful!');
                            //   // //      } else {
                            //   // //        showSnackBarMessage(context,
                            //   // //            'Registration Failed! Try again', true);
                            //        // }
                            //
                          }
                        },
                        child: Center(
                          child: Text(
                            "Update",
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),




                  ],
                ),
              ),
            )
        )
    );
  }
}
