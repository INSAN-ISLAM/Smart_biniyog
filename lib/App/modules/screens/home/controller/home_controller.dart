


import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:smart_biniyog/App/data/model/catagory_model.dart';
import 'package:smart_biniyog/App/data/model/allproject_nodel.dart';
import 'package:smart_biniyog/App/data/model/project_type_model.dart';
import 'package:smart_biniyog/App/data/service/network_caller.dart';
import 'package:smart_biniyog/App/data/urls/urls.dart';

class HomeController extends GetxController with GetSingleTickerProviderStateMixin {

  late TabController tabController;
  bool getCategoryProgress = false;
  List<CategoryModel> categories = [];

  RxInt currentIndex = 0.obs;

  @override
  void onInit() {
    tabController = TabController(length: 5, vsync: this);
    tabController.addListener(() {


      if (!tabController.indexIsChanging && currentIndex.value != tabController.index) {
        // Ensure we only make the API call when the tab change is finalized
        currentIndex.value = tabController.index;
        print(currentIndex.value);
       // fetchProjects(tabController.index);  // Call API when the index changes
      }

    });

    getCategory();
    getProjectType();
    getReviewProcect();
    super.onInit();
  }

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }


  Future<bool> getCategory() async {
    getCategoryProgress = true;
    update();
    final response = await NetworkUtils().getMethod(
      Urls.categoryUrl,
    );
    getCategoryProgress = false;
    if (response != null) {

      var data=response['data'];

      for (int i=0;i<data.length;i++) {
        categories.add(CategoryModel.fromJson(data[i]));
      }
      print(categories);
      update();

      return true;
    } else {
      update();
      return false;
    }
  }



  bool ProjectTypeProgress = false;
  ProjectTypeModel projectTypeDataModel = ProjectTypeModel();


  Future<bool> getProjectType() async {
    ProjectTypeProgress = true;
    update();
    final response = await NetworkUtils().getMethod(
      Urls.businesstypeurl,
    );
    //print("response:$response");
    ProjectTypeProgress = false;
    if (response != null) {
      projectTypeDataModel = ProjectTypeModel.fromJson(response);
      update();
      return true;
    } else {
      update();
      return false;
    }
  }


  bool reviewProjectProgress = false;
  AllProjectModel allProjectDataModel = AllProjectModel();


  Future<bool> getReviewProcect() async {
    reviewProjectProgress = true;
    update();
    final response = await NetworkUtils().getMethod(
      Urls.allprojecturl,
    );
   // print("All response:$response");
    reviewProjectProgress = false;
    if (response != null) {
      allProjectDataModel = AllProjectModel.fromJson(response);
      update();
      return true;
    } else {
      update();
      return false;
    }
  }


  }



















  //
  //
  //   final response = await NetworkUtils.getMethod(categoryUrl);
  //   _getCategoryInProgress = false;
  //   if (response.isSuccess) {
  //     _categoryModel = Category.fromJson(response.returnData);
  //     update();
  //     return true;
  //   } else {
  //     update();
  //     return false;
  //   }
  // }
  //
  //
  // }

