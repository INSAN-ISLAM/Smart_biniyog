import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:smart_biniyog/App/routes/route_names.dart';

class VariableTermScreen extends StatefulWidget {
  const VariableTermScreen({Key? key}) : super(key: key);

  @override
  State<VariableTermScreen> createState() => _VariableTermScreenState();
}

class _VariableTermScreenState extends State<VariableTermScreen> {
  // VariableTermController variableTermController=Get.put(VariableTermController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: GetBuilder<VariableTermController>(builder: (VariableTermController) {
      //   return VariableTermController.allProjectProgress
      //       ? const Center(
      //     child: CircularProgressIndicator(),
      //   )
      //       : RefreshIndicator(
      //     onRefresh: () async {
      //       VariableTermController.getAllProcect();
      //     },
      //     child: Column(
      //       children: VariableTermController.AllProjectDataModel.data!
      //           .map((e) =>  Row(
      //         crossAxisAlignment: CrossAxisAlignment.start,
      //         mainAxisAlignment: MainAxisAlignment.start,
      //         children: [
      //           Expanded(
      //             flex: 30,
      //             child: Padding(
      //               padding:
      //               const EdgeInsets.fromLTRB(
      //                   0, 0, 5, 0),
      //               child: Container(
      //                 decoration: BoxDecoration(
      //                     borderRadius:
      //                     BorderRadius.circular(
      //                         10)),
      //                 child: Image.network(
      //                   // ProjectController
      //                   //     .AllProjectDataModel
      //                   //     .data?[index]
      //                   //     .image ??
      //                     'Unknown'
      //                 ),
      //               ),
      //             ),
      //           ),
      //           Expanded(
      //             flex: 70,
      //             child: InkWell(
      //               onTap: () {
      //                 Get.toNamed(RouteNames
      //                     .projectDetailsScreen);
      //               },
      //               child: Column(
      //                 mainAxisAlignment:
      //                 MainAxisAlignment.start,
      //                 crossAxisAlignment:
      //                 CrossAxisAlignment.start,
      //                 children: [
      //                   Padding(
      //                     padding:
      //                     EdgeInsets.fromLTRB(
      //                         10, 0, 0, 0),
      //                     child: Text(
      //                       // ProjectController
      //                       //     .AllProjectDataModel
      //                       //     .data?[index]
      //                       //     .name ??
      //                       'Unknown',
      //                       style: TextStyle(
      //                           fontSize: 15,
      //                           fontWeight:
      //                           FontWeight.w600,
      //                           color:
      //                           Colors.black),
      //                     ),
      //                   ),
      //                   SizedBox(
      //                     height: 4,
      //                   ),
      //                   Padding(
      //                     padding:
      //                     EdgeInsets.fromLTRB(
      //                         10, 0, 0, 0),
      //                     child: Row(
      //                       children: [
      //                         Text(
      //                           // ProjectController
      //                           //     .AllProjectDataModel
      //                           //     .data?[
      //                           // index]
      //                           //     .projectPrice ??
      //                           'Unknown',
      //                           style: TextStyle(
      //                               fontSize: 15,
      //                               fontWeight:
      //                               FontWeight
      //                                   .w600,
      //                               color: Colors
      //                                   .black),
      //                         ),
      //                         SizedBox(
      //                           width: 3,
      //                         ),
      //                         Text('BDT/Unit'),
      //                       ],
      //                     ),
      //                   ),
      //                   Padding(
      //                     padding:
      //                     EdgeInsets.fromLTRB(
      //                         8, 0, 0, 0),
      //                     child: Row(
      //                       children: [
      //                         CircleAvatar(
      //                           radius: 10,
      //                           backgroundColor:
      //                           Colors
      //                               .deepOrange,
      //                           child: Center(
      //                             child: Icon(
      //                               Icons
      //                                   .add_alert_sharp,
      //                               color: Colors
      //                                   .white,
      //                               size: 10,
      //                             ),
      //                           ),
      //                         ),
      //                         SizedBox(
      //                           width: 4,
      //                         ),
      //                         Text(
      //                           "",
      //                           //'${ProjectController.AllProjectDataModel.data?[index].returnMin ?? ''}${"% -"} ${ProjectController.AllProjectDataModel.data?[index].returnMax ?? ''}${"%"}', // '18%--24%(ট 1,800-ট 2,200  )',
      //                           style: TextStyle(
      //                             fontSize: 15,
      //                           ),
      //                         ),
      //                       ],
      //                     ),
      //                   ),
      //                   SizedBox(
      //                     height: 4,
      //                   ),
      //                   Padding(
      //                     padding:
      //                     EdgeInsets.fromLTRB(
      //                         8, 0, 0, 0),
      //                     child: Row(
      //                       children: [
      //                         CircleAvatar(
      //                           radius: 10,
      //                           backgroundColor:
      //                           Colors
      //                               .deepOrange,
      //                           child: Center(
      //                             child: Icon(
      //                               Icons
      //                                   .add_alert_sharp,
      //                               color: Colors
      //                                   .white,
      //                               size: 10,
      //                             ),
      //                           ),
      //                         ),
      //                         SizedBox(
      //                           width: 4,
      //                         ),
      //                         Text(
      //                           '',
      //                           style: TextStyle(
      //                             fontSize: 15,
      //                           ),
      //                         ),
      //                       ],
      //                     ),
      //                   ),
      //                 ],
      //               ),
      //             ),
      //           ),
      //         ],
      //       ),
      //
      //
      //
      //
      //
      //       )
      //           .toList(),
      //     ),
      //   );
      // })
    );
  }
}
