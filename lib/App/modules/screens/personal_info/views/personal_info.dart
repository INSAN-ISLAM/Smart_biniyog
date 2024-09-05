import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_biniyog/App/modules/screens/change_person_Info/views/change_info.dart';
import 'package:smart_biniyog/App/modules/screens/personal_info/controlar/personal_controller.dart';
import 'package:smart_biniyog/App/routes/route_names.dart';

class PersonalInfoScreen extends GetView<PersonalInfoGetController> {
  const PersonalInfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                  ),
                ),
                child: Column(
                  crossAxisAlignment:  CrossAxisAlignment.end,
                  children: [
                    IconButton(onPressed: (){
                      //
                      // Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                      //     builder: (context) => SettingScreen()), (route) => true);
            //
            },
                      icon: Text(''),
                    ),

                    const Center(
                      child: CircleAvatar(
                        radius: 50,
                       child: Icon(Icons.perm_identity_outlined,size: 80,),
                       //backgroundImage://AssetImage('assets/images/profile.png'),
                      ),
                    ),

                    SizedBox(
                      height: 10,
                    ),
                    Center(child: Text("+880-1940423458",style:TextStyle(fontWeight:FontWeight.bold),)),
                    SizedBox(
                      height: 10,
                    ),

                  ],
                )),
            ListTile(
              title: Text('Personal Informaion',style:TextStyle(fontWeight:FontWeight.bold)),
              trailing: TextButton(onPressed: () {
                Get.toNamed(RouteNames.changePersonalInfo);

              }, child: Text('Change'),),

            ),

            SizedBox(
              height: 3,
            ),

            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                //height: 310,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    ListTile(
                      iconColor: Colors.black,
                      trailing: Text('Individual User', style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                      ),),
                      title: Text(
                        'I`m an: ',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    ListTile(
                      iconColor: Colors.black,
                      trailing: Text('N/A', style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                      ),),
                      title: Text(
                        'Name: ',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    ListTile(
                      iconColor: Colors.black,
                      trailing: Text('N/A', style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                      ),),
                      title: Text(
                        'Email: ',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    ListTile(
                      iconColor: Colors.black,
                      trailing: Text('N/A', style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                      ),),
                      title: Text(
                        'Date of Birth: ',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    ListTile(
                      iconColor: Colors.black,
                      trailing: Text('N/A', style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                      ),),
                      title: Text(
                        'NID: ',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    ListTile(
                      iconColor: Colors.black,
                      trailing: Text('N/A', style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                      ),),
                      title: Text(
                        'Gender: ',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    ListTile(
                      iconColor: Colors.black,
                      trailing: Text('N/A', style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                      ),),
                      title: Text(
                        'TIN: ',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                      ),
                    ),

                  ],
                ),
              ),

            ),



          ],
        ),
      ),
    );
  }
}
