import 'package:flutter/material.dart';
import 'package:get/get.dart';


import 'package:smart_biniyog/App/modules/screens/project_review/controller/project_review_list_controller.dart';
import 'package:smart_biniyog/App/routes/route_names.dart';

class ProjectReviews extends StatefulWidget {
  const ProjectReviews({Key? key}) : super(key: key);

  @override
  State<ProjectReviews> createState() => _ProjectReviewsState();
}

class _ProjectReviewsState extends State<ProjectReviews> {
  ProjectReviewController projectReviewController=Get.put(ProjectReviewController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:GetBuilder<ProjectReviewController>(builder: (ProjectReviewController) {
        return ProjectReviewController.reviewProjectProgress
            ? const Center(
          child: CircularProgressIndicator(),
        )
            : RefreshIndicator(
          onRefresh: () async {
            ProjectReviewController.getReviewProcected();
          },
          child: SingleChildScrollView(
            child: Column(
              children: ProjectReviewController.AllProjectDataModel.data!
                  .map((e) =>  Card(

                elevation: 15,
                child: InkWell(
                  onTap: () {
                    Get.toNamed(RouteNames.projectReviewDetail,);
                  },
                  child: Container(
                      height: 270,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 55,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                              child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  //color: Colors.pink,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Image.asset(
                                  'assets/images/Agriculture.jpg',
                                  fit: BoxFit.fill,
                                  //height: 100,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                              flex: 40,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Text(
                                      'Paddy Harvest-12',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Text(
                                      '20,000 BDT/Unit',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Row(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.end,
                                      mainAxisAlignment:
                                      MainAxisAlignment.end,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            'Read More ',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.black),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )),
                        ],
                      )),
                ),
              ),





              )
                  .toList(),
            ),
          ),
        );
      }),
    );
  }
}
