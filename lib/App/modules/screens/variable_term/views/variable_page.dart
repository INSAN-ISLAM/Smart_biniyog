import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:smart_biniyog/App/modules/screens/variable_term/controller/variable_term.dart';
import 'package:smart_biniyog/App/routes/route_names.dart';

class VariableTermScreen extends StatefulWidget {
  const VariableTermScreen({Key? key}) : super(key: key);

  @override
  State<VariableTermScreen> createState() => _VariableTermScreenState();
}

class _VariableTermScreenState extends State<VariableTermScreen> {
   VariableTermController variableTermController=Get.put(VariableTermController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<VariableTermController>(builder: (VariableTermController) {
        return VariableTermController.returnProjectProgress
            ? const Center(
          child: CircularProgressIndicator(),
        )
            : RefreshIndicator(
          onRefresh: () async {
            VariableTermController.getReturnTermProcect();
          },
          child: Column(
            children: VariableTermController.ReturnProjectDataModel.data!
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
                        // ProjectController
                        //     .AllProjectDataModel
                        //     .data?[index]
                        //     .image ??
                          'Unknown'
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
                            '${e.projectPrice}',
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
                                '${e.name}',
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
                                 "${e.returnMin}${"% -"} ${e.returnMax} ${"%"}" ,
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
                                '4 manths',
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
    );
  }
}
