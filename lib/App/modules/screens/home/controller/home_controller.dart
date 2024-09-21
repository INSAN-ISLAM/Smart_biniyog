


import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:smart_biniyog/App/data/model/catagory_model.dart';
import 'package:smart_biniyog/App/data/model/allproject_nodel.dart';
import 'package:smart_biniyog/App/data/model/project_type_model.dart';
import 'package:smart_biniyog/App/data/service/network_caller.dart';
import 'package:smart_biniyog/App/data/urls/urls.dart';

class HomeController extends GetxController {

  bool getCategoryProgress = false;
  CategoryModel categoryDataModel = CategoryModel();


  Future<bool> getCategory() async {
    getCategoryProgress = true;
    update();
    final response = await NetworkUtils().getMethod(
      Urls.categoryUrl,
    );
    getCategoryProgress = false;
    if (response != null) {
      categoryDataModel = CategoryModel.fromJson(response);
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



  @override
  void onInit() {
    getCategory();
    getProjectType();
    getReviewProcect();
    super.onInit();
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

