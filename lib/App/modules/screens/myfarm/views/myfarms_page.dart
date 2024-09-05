import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_biniyog/App/modules/Screens/myfarm/controller/myfarm_controller.dart';
import 'package:smart_biniyog/App/modules/Widgets/AppElevatedButtonWidget.dart';
import 'package:smart_biniyog/App/routes/route_names.dart';


class MyFarmsScreen extends GetView<MyFarmController> {
  const MyFarmsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      appBar: AppBar(
        title: Center(child: const Text( 'My Farms')),
actions: [
  IconButton(onPressed: (){
    Get.toNamed(RouteNames.myCardScreen);





  }, icon: Icon(Icons.shopping_cart,color: Colors.grey,)),
],
      ),
      body: Column(
        children: [
          Divider(
            color: Colors.grey,
            // height: 10,
            thickness: 2,
            // indent: 20,
            // endIndent: 20,
          ),

          Expanded(
              flex: 50,
              child: Container(
                width: double.infinity,
                  color: Colors.white,
                  child: Icon(Icons.login_outlined,
                  size: 100,
                    color: Colors.deepOrange,
                  ))),
          Expanded(
              flex: 50,
              child: Container(
                width: double.infinity,

                  child: Column(
                    children: [
                      Text('Login to view',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),
                      ),
                      SizedBox(height: 10,),
                      Text("you need to login or regester first in order to \nview the content of this page",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(height: 10,),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: AppElevatedButton(
                          Color: Colors.green,
                          onTap: () {

                            Get.toNamed(RouteNames.logInScreen);




                          },
                          child: Text('Login/Register Now',
                          style: TextStyle(
                            color: Colors.white
                          ),),),
                      )



                    ],
                  ))),
        ],
      ),
    );
  }
}
