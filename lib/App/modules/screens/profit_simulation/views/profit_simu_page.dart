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
              Padding(
                padding: const EdgeInsets.only(left: 10.0,right: 10.0,bottom: 5.0,top: 5.0),
                child: Row(
                    children: [
                      Expanded(child: Center(
                        child: Text(
                          'Business Type :',
                          style: TextStyle(
                            // color: Colors.green,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      )),
                      Expanded(
                        child: Center(
                          child: Text(
                            'Trading',
                            style: TextStyle(
                              // color: Colors.green,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ]
                ),
              ),

              Divider(
                color: Colors.grey,
                thickness: 1,
              ),

            ],
          )),
    );
  }
}
