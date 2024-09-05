import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_biniyog/App/modules/Screens/profit_simulation/controller/profit_controller.dart';

import 'package:smart_biniyog/App/modules/Widgets/AppElevatedButtonWidget.dart';
import 'package:smart_biniyog/App/modules/Widgets/ProductCalculatStepper.dart';
import 'package:smart_biniyog/App/routes/route_names.dart';

class ProfitSimuScreen extends GetView<ProfitSimuController> {
  const ProfitSimuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: SingleChildScrollView(

          child: Column(
            children: [
              SizedBox(height: 10,),
              Center(child: Text('Frofit Simulation',style: TextStyle(
                // color: Colors.green,
                  fontSize: 15,
                  fontWeight: FontWeight.bold

              ),)),
              SizedBox(height: 5,),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(children: [
                Expanded(
                    flex: 33,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Month',style: TextStyle(
                          //color: Colors.green,
                            fontSize: 15,
                            fontWeight: FontWeight.bold

                        ),),
                        Divider(
                          color: Colors.grey,
                          // height: 10,
                          thickness: 2,
                          // indent: 20,
                          // endIndent: 20,
                        ),
                        Text('5',style: TextStyle(
                          //color: Colors.green,
                            fontSize: 15,
                            fontWeight: FontWeight.bold

                        ),),
                        Divider(
                          color: Colors.grey,
                          // height: 10,
                          thickness: 2,
                          // indent: 20,
                          // endIndent: 20,
                        ),
                        Text('Return on capital',style: TextStyle(
                          //color: Colors.green,
                            fontSize: 15,
                            fontWeight: FontWeight.bold

                        ),),
                        Divider(
                          color: Colors.grey,
                          // height: 10,
                          thickness: 2,
                          // indent: 20,
                          // endIndent: 20,
                        ),
                        Text('Total',style: TextStyle(
                          //color: Colors.green,
                            fontSize: 15,
                            fontWeight: FontWeight.bold

                        ),),
                        Divider(
                          color: Colors.grey,
                          // height: 10,
                          thickness: 2,
                          // indent: 20,
                          // endIndent: 20,
                        ),
                      ],
                    )),
                Expanded(
                    flex: 33,
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('ROI',style: TextStyle(
                          //color: Colors.green,
                            fontSize: 15,
                            fontWeight: FontWeight.bold

                        ),),
                        Divider(
                          color: Colors.grey,
                          // height: 10,
                          thickness: 2,
                          // indent: 20,
                          // endIndent: 20,
                        ),
                        Text('9% -11%',style: TextStyle(
                          //color: Colors.green,
                            fontSize: 15,
                            fontWeight: FontWeight.bold

                        ),),
                        Divider(
                          color: Colors.grey,
                          // height: 10,
                          thickness: 2,
                          // indent: 20,
                          // endIndent: 20,
                        ),
                        Text('9%-11% ----------               '
                          ,style: TextStyle(
                          //color: Colors.green,
                            fontSize: 15,
                            fontWeight: FontWeight.bold

                        ),),
                        Divider(
                          color: Colors.grey,
                          // height: 10,
                          thickness: 2,
                          // indent: 20,
                          // endIndent: 20,
                        ),
                        Text('BDT 21,800 ',style: TextStyle(
                          //color: Colors.green,
                            fontSize: 15,
                            fontWeight: FontWeight.bold

                        ),),
                        Divider(
                          color: Colors.grey,
                          // height: 10,
                          thickness: 2,
                          // indent: 20,
                          // endIndent: 20,
                        ),
                      ],
                    )),
                Expanded(
                    flex: 33,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Text('Net Profit',style: TextStyle(
                          //color: Colors.green,
                            fontSize: 15,
                            fontWeight: FontWeight.bold

                        ),),
                        Divider(
                          color: Colors.grey,
                          // height: 10,
                          thickness: 2,
                          // indent: 20,
                          // endIndent: 20,
                        ),
                        Text('ট1,800--ট2,200  ',style: TextStyle(
                          //color: Colors.green,
                            fontSize: 15,
                            fontWeight: FontWeight.bold

                        ),),
                        Divider(
                          color: Colors.grey,
                          // height: 10,
                          thickness: 2,
                          // indent: 20,
                          // endIndent: 20,
                        ),
                        Text('ট1,800--ট2,200 --------- ',style: TextStyle(
                          //color: Colors.green,
                            fontSize: 15,
                            fontWeight: FontWeight.bold

                        ),),
                        Divider(
                          color: Colors.grey,
                          // height: 10,
                          thickness: 2,
                          // indent: 20,
                          // endIndent: 20,
                        ),
                        Text('-- BDT 22,200',style: TextStyle(
                          //color: Colors.green,
                            fontSize: 15,
                            fontWeight: FontWeight.bold

                        ),),
                        Divider(
                          color: Colors.grey,
                          // height: 10,
                          thickness: 2,
                          // indent: 20,
                          // endIndent: 20,
                        ),

                      ],
                    )),

              ],),
            ),
              Row(
                children: [
                  Expanded(
                    flex: 40,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                      child: ProductStepper(
                        onDecrement: (int currentValue) {  },

                        onIncrement: (int currentValue) {  },),
                    ),
                  ),
                  Expanded(
                    flex: 60,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                      child: AppElevatedButton(
                      Color: Colors.green,
                        onTap: () {
                          Get.toNamed(RouteNames.myCardScreen);

                        },
                        child: Text('Book Now',
                        style: TextStyle(
                          color: Colors.white

                        ),
                        ),),
                    ),
                  ),
                ],
              ),

            ],
          )),
    );
  }
}
