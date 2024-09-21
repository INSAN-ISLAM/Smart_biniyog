import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import 'package:smart_biniyog/App/modules/screens/allproject/controller/allproject_controller.dart';
import 'package:smart_biniyog/App/routes/route_names.dart';

class AllProjectScreen extends GetView<AllProjectController> {
   AllProjectScreen({Key? key}) : super(key: key);
  AllProjectController allProjectController=Get.put(AllProjectController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:GetBuilder<AllProjectController>(builder: (AllProjectController) {
          return AllProjectController.allProjectProgress
              ? const Center(
            child: CircularProgressIndicator(),
          )
              : RefreshIndicator(
            onRefresh: () async {
              AllProjectController.getAllProcect();
            },
            child: Column(
              children: AllProjectController.AllProjectDataModel.data!
                  .map((e) =>  Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 30,
                    child: Padding(
                      padding:
                      const EdgeInsets.fromLTRB(
                          0, 0, 5, 0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.circular(
                                10)),
                        child: Image.network(
                          '',//' ${e.image}',
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 70,
                    child: InkWell(
                      onTap: () {
                        Get.toNamed(RouteNames
                            .projectDetailsScreen);
                      },
                      child: Column(
                        mainAxisAlignment:
                        MainAxisAlignment.start,
                        crossAxisAlignment:
                        CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                            EdgeInsets.fromLTRB(
                                10, 0, 0, 0),
                            child: Text(
                            ' ${e.name}',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight:
                                  FontWeight.w600,
                                  color:
                                  Colors.black),
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Padding(
                            padding:
                            EdgeInsets.fromLTRB(
                                10, 0, 0, 0),
                            child: Row(
                              children: [
                                Text(
                                  ' ${e.projectPrice}',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight:
                                      FontWeight
                                          .w600,
                                      color: Colors
                                          .black),
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Text('BDT/Unit'),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                            EdgeInsets.fromLTRB(
                                8, 0, 0, 0),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  radius: 10,
                                  backgroundColor:
                                  Colors
                                      .deepOrange,
                                  child: Center(
                                    child: Icon(
                                      Icons
                                          .add_alert_sharp,
                                      color: Colors
                                          .white,
                                      size: 10,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  "${e.returnMin}${"% -"} ${e.returnMax} ${"%"}",
                                  //'${ProjectController.AllProjectDataModel.data?[index].returnMin ?? ''}${"% -"} ${ProjectController.AllProjectDataModel.data?[index].returnMax ?? ''}${"%"}', // '18%--24%(ট 1,800-ট 2,200  )',
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Padding(
                            padding:
                            EdgeInsets.fromLTRB(
                                8, 0, 0, 0),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  radius: 10,
                                  backgroundColor:
                                  Colors
                                      .deepOrange,
                                  child: Center(
                                    child: Icon(
                                      Icons
                                          .add_alert_sharp,
                                      color: Colors
                                          .white,
                                      size: 10,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  '3 manths',
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),





              )
                  .toList(),
            ),
          );
        })



      // Column(
      //   children: [
      //     SizedBox(height: 5,),
      //
      //     Padding(
      //       padding: const EdgeInsets.all(2.0),
      //       child: Row(
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
      //                     // ProjectController
      //                     //     .AllProjectDataModel
      //                     //     .data?[index]
      //                     //     .image ??
      //                         'Unknown'
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
      //                           'Unknown',
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
      //                               'Unknown',
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
      //     ),
      //
      //
      //
      //   ],
      // ),









    );
  }
}

// GetBuilder<ProjectController>(builder: (ProjectController) {
//   return Expanded(
//     child: ProjectController.allProjectProgress
//         ? const Center(
//             child: CircularProgressIndicator(),
//           )
//         : RefreshIndicator(
//             onRefresh: () async {
//               ProjectController.AllProcect();
//             },
//             child: Row(
//               children: ProjectController
//                   .AllProjectDataModel.data!
//                   .map(
//                     (e) => Card(
//                       elevation: 10,
//                       child: Padding(
//                         padding: const EdgeInsets.all(2.0),
//                         child: Row(
//                           crossAxisAlignment:
//                               CrossAxisAlignment.start,
//                           mainAxisAlignment:
//                               MainAxisAlignment.start,
//                           children: [
//                             Expanded(
//                               flex: 30,
//                               child: Padding(
//                                 padding: const EdgeInsets
//                                     .fromLTRB(0, 0, 5, 0),
//                                 child: Container(
//                                   decoration: BoxDecoration(
//                                       borderRadius:
//                                           BorderRadius
//                                               .circular(
//                                                   10)),
//                                   child: Image.asset(
//                                     'assets/images/Cowmarket.jpeg',
//                                     fit: BoxFit.fill,
//                                     height: 100,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                             Expanded(
//                               flex: 75,
//                               child: InkWell(
//                                 onTap: () {
//                                   Get.toNamed(RouteNames
//                                       .projectDetailsScreen);
//                                 },
//                                 child: const Column(
//                                   mainAxisAlignment:
//                                       MainAxisAlignment
//                                           .start,
//                                   crossAxisAlignment:
//                                       CrossAxisAlignment
//                                           .start,
//                                   children: [
//                                     Padding(
//                                       padding: EdgeInsets
//                                           .fromLTRB(
//                                               10, 0, 0, 0),
//                                       child: Text(
//                                         'Cattle Trade-15',
//                                         style: TextStyle(
//                                             fontSize: 15,
//                                             fontWeight:
//                                                 FontWeight
//                                                     .w600,
//                                             color: Colors
//                                                 .black),
//                                       ),
//                                     ),
//                                     SizedBox(
//                                       height: 4,
//                                     ),
//                                     Padding(
//                                       padding: EdgeInsets
//                                           .fromLTRB(
//                                               10, 0, 0, 0),
//                                       child: Text(
//                                         '25,000 BDT/Unit',
//                                         style: TextStyle(
//                                             fontSize: 15,
//                                             fontWeight:
//                                                 FontWeight
//                                                     .w600,
//                                             color: Colors
//                                                 .black),
//                                       ),
//                                     ),
//                                     Padding(
//                                       padding: EdgeInsets
//                                           .fromLTRB(
//                                               8, 0, 0, 0),
//                                       child: Row(
//                                         children: [
//                                           CircleAvatar(
//                                             radius: 10,
//                                             backgroundColor:
//                                                 Colors
//                                                     .deepOrange,
//                                             child: Center(
//                                               child: Icon(
//                                                 Icons
//                                                     .add_alert_sharp,
//                                                 color: Colors
//                                                     .white,
//                                                 size: 10,
//                                               ),
//                                             ),
//                                           ),
//                                           SizedBox(
//                                             width: 4,
//                                           ),
//                                           Text(
//                                             '18%--24%(ট 1,800-ট 2,200  )',
//                                             style:
//                                                 TextStyle(
//                                               fontSize: 15,
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                     SizedBox(
//                                       height: 4,
//                                     ),
//                                     Padding(
//                                       padding: EdgeInsets
//                                           .fromLTRB(
//                                               8, 0, 0, 0),
//                                       child: Row(
//                                         children: [
//                                           CircleAvatar(
//                                             radius: 10,
//                                             backgroundColor:
//                                                 Colors
//                                                     .deepOrange,
//                                             child: Center(
//                                               child: Icon(
//                                                 Icons
//                                                     .add_alert_sharp,
//                                                 color: Colors
//                                                     .white,
//                                                 size: 10,
//                                               ),
//                                             ),
//                                           ),
//                                           SizedBox(
//                                             width: 4,
//                                           ),
//                                           Text(
//                                             '5 Month',
//                                             style:
//                                                 TextStyle(
//                                               fontSize: 15,
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   )
//                   .toList(),
//             ),
//           ),
//   );
// }),

//}),
// GetBuilder<ProjectController>(builder: (ProjectController) {
//   return Expanded(
//     child: ProjectController.allProjectProgress
//         ? const Center(
//       child: CircularProgressIndicator(),
//     )
//         : RefreshIndicator(
//       onRefresh: () async {
//         ProjectController.AllProcect();
//       },
//       child: ListView.builder(
//         itemCount: ProjectController
//             .AllProjectDataModel.data?.length ?? 0,
//         itemBuilder: (context, index) {
//
//
//           //int duration= ProjectController.AllProjectDataModel.data?[index].created_at ?? ''  ;
//
//
//
//
//           return Card(
//             elevation: 10,
//             child: Padding(
//               padding: const EdgeInsets.all(2.0),
//               child: Row(
//                 crossAxisAlignment:
//                 CrossAxisAlignment.start,
//                 mainAxisAlignment:
//                 MainAxisAlignment.start,
//                 children: [
//                   Expanded(
//                     flex: 30,
//                     child: Padding(
//                       padding:
//                       const EdgeInsets.fromLTRB(
//                           0, 0, 5, 0),
//                       child: Container(
//                         decoration: BoxDecoration(
//                             borderRadius:
//                             BorderRadius.circular(
//                                 10)),
//                         child: Image.network(
//                             ProjectController
//                                 .AllProjectDataModel
//                                 .data?[index]
//                                 .image ??
//                                 'Unknown'),
//                       ),
//                     ),
//                   ),
//                   Expanded(
//                     flex: 75,
//                     child: InkWell(
//                       onTap: () {
//                         Get.toNamed(RouteNames
//                             .projectDetailsScreen);
//                       },
//                       child: Column(
//                         mainAxisAlignment:
//                         MainAxisAlignment.start,
//                         crossAxisAlignment:
//                         CrossAxisAlignment.start,
//                         children: [
//                           Padding(
//                             padding:
//                             EdgeInsets.fromLTRB(
//                                 10, 0, 0, 0),
//                             child: Text(
//                               ProjectController
//                                   .AllProjectDataModel
//                                   .data?[index]
//                                   .name ??
//                                   'Unknown',
//                               style: TextStyle(
//                                   fontSize: 15,
//                                   fontWeight:
//                                   FontWeight.w600,
//                                   color:
//                                   Colors.black),
//                             ),
//                           ),
//                           SizedBox(
//                             height: 4,
//                           ),
//                           Padding(
//                             padding:
//                             EdgeInsets.fromLTRB(
//                                 10, 0, 0, 0),
//                             child: Row(
//                               children: [
//                                 Text(
//                                   ProjectController
//                                       .AllProjectDataModel
//                                       .data?[
//                                   index]
//                                       .projectPrice ??
//                                       'Unknown',
//                                   style: TextStyle(
//                                       fontSize: 15,
//                                       fontWeight:
//                                       FontWeight
//                                           .w600,
//                                       color: Colors
//                                           .black),
//                                 ),
//                                 SizedBox(
//                                   width: 3,
//                                 ),
//                                 Text('BDT/Unit'),
//                               ],
//                             ),
//                           ),
//                           Padding(
//                             padding:
//                             EdgeInsets.fromLTRB(
//                                 8, 0, 0, 0),
//                             child: Row(
//                               children: [
//                                 CircleAvatar(
//                                   radius: 10,
//                                   backgroundColor:
//                                   Colors
//                                       .deepOrange,
//                                   child: Center(
//                                     child: Icon(
//                                       Icons
//                                           .add_alert_sharp,
//                                       color: Colors
//                                           .white,
//                                       size: 10,
//                                     ),
//                                   ),
//                                 ),
//                                 SizedBox(
//                                   width: 4,
//                                 ),
//                                 Text(
//                                   '${ProjectController.AllProjectDataModel.data?[index].returnMin ?? ''}${"% -"} ${ProjectController.AllProjectDataModel.data?[index].returnMax ?? ''}${"%"}', // '18%--24%(ট 1,800-ট 2,200  )',
//                                   style: TextStyle(
//                                     fontSize: 15,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           SizedBox(
//                             height: 4,
//                           ),
//                           Padding(
//                             padding:
//                             EdgeInsets.fromLTRB(
//                                 8, 0, 0, 0),
//                             child: Row(
//                               children: [
//                                 CircleAvatar(
//                                   radius: 10,
//                                   backgroundColor:
//                                   Colors
//                                       .deepOrange,
//                                   child: Center(
//                                     child: Icon(
//                                       Icons
//                                           .add_alert_sharp,
//                                       color: Colors
//                                           .white,
//                                       size: 10,
//                                     ),
//                                   ),
//                                 ),
//                                 SizedBox(
//                                   width: 4,
//                                 ),
//                                 Text(
//                                   '',
//                                   style: TextStyle(
//                                     fontSize: 15,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           );
//         },
//       ),
//     ),
//   );Te
