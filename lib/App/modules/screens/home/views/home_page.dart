import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:smart_biniyog/App/Constant/Colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smart_biniyog/App/modules/Screens/home/controller/home_controller.dart';
import 'package:smart_biniyog/App/modules/Widgets/RemarkBestProjectWidget.dart';
import 'package:smart_biniyog/App/modules/Widgets/RemarkCategoryWidget.dart';
import 'package:smart_biniyog/App/modules/utils/TextStyles.dart';
import 'package:smart_biniyog/App/routes/route_names.dart';

class MyHomePageScreen extends StatefulWidget {
  MyHomePageScreen({Key? key}) : super(key: key);

  @override
  State<MyHomePageScreen> createState() => _MyHomePageScreenState();
}

class _MyHomePageScreenState extends State<MyHomePageScreen> {
  final ValueNotifier<int> _currentCarouselIndex = ValueNotifier(0);

  HomeController homeController=Get.put(HomeController());



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  height: 570,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.green,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 16,
                      ),
                      ListTile(
                        title: Row(
                          children: [
                            Text(
                              'Welcome to',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              'SMART ',
                              style: TitleTextStyle.copyWith(
                                  color: Colors.white, fontSize: 15),
                            ),
                            Text(
                              'BINIYOG ',
                              style: TitleTextStyle.copyWith(
                                  color: Colors.white, fontSize: 15),
                            ),
                          ],
                        ),
                        leading: CircleAvatar(
                          child: Image.asset(
                            'assets/images/smart_biniyog.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                        trailing: IconButton(
                            onPressed: () {
                              Get.toNamed(RouteNames.myCardScreen);
                            },
                            icon: const Icon(
                              Icons.shopping_cart,
                              color: Colors.white,
                            )),
                      ),
                      Card(
                        child: CarouselSlider(
                          options: CarouselOptions(
                              height: 200.0,
                              viewportFraction: 1,
                              autoPlayInterval: Duration(seconds: 2),
                              autoPlay: true,
                              onPageChanged: (index, _) {
                                _currentCarouselIndex.value = index;
                              }),
                          items: [1, 2, 3, 4, 5].map((i) {
                            return Builder(
                              builder: (BuildContext context) {
                                return Container(
                                    width: MediaQuery.of(context).size.width,
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 5.0),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: primaryColor),
                                    alignment: Alignment.center,
                                    child: Text(
                                      'text $i',
                                      style: TextStyle(fontSize: 16.0),
                                    ));
                              },
                            );
                          }).toList(),
                        ),
                      ),
                      ValueListenableBuilder(
                          valueListenable: _currentCarouselIndex,
                          builder: (context, currentValue, _) {
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                for (int i = 0; i < 5; i++)
                                  Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: Container(
                                      height: 10,
                                      width: 10,
                                      decoration: BoxDecoration(
                                          color: currentValue == i
                                              ? blackColor
                                              : Colors.white,
                                          border:
                                              Border.all(color: Colors.grey),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                    ),
                                  )
                              ],
                            );
                          }),
                      SizedBox(
                        height: 4,
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: Card(
                          elevation: 10,
                          child: Container(
                              height: 270,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                      child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(20, 20, 0, 0),
                                        child: Icon(
                                          Icons.home_work,
                                          color: Colors.green,
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(0, 0, 0, 0),
                                        child: ListTile(
                                          title: Text(
                                            '617M +',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          leading: Text(
                                            'ট',
                                            style: TextStyle(
                                              fontSize: 20,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(20, 0, 0, 0),
                                        child: Text(
                                          'Funds Disbursed',
                                        ),
                                      ),
                                      SizedBox(
                                        height: 12,
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(20, 20, 0, 0),
                                        child: Icon(
                                          Icons.people,
                                          color: Colors.green,
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(0, 0, 0, 0),
                                        child: ListTile(
                                          title: Text(
                                            '6k +',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(20, 0, 0, 0),
                                        child: Text(
                                          'Farmers Engaged',
                                        ),
                                      ),
                                    ],
                                  )),
                                  Expanded(
                                      child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(20, 20, 0, 0),
                                        child: Icon(
                                          Icons.hail_outlined,
                                          color: Colors.green,
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(0, 0, 0, 0),
                                        child: ListTile(
                                          title: Text(
                                            '217M +',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          leading: Text(
                                            'ট',
                                            style: TextStyle(
                                              fontSize: 20,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(20, 0, 0, 0),
                                        child: Text(
                                          'Agricultural Yield',
                                        ),
                                      ),
                                      SizedBox(
                                        height: 12,
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(20, 20, 0, 0),
                                        child: Icon(
                                          FontAwesomeIcons.dollarSign,
                                          color: Colors.green,
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(0, 0, 0, 0),
                                        child: ListTile(
                                          leading: Text(
                                            'ট',
                                            style: TextStyle(
                                              fontSize: 20,
                                            ),
                                          ),
                                          title: Text(
                                            '633M +',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(20, 0, 0, 0),
                                        child: Text(
                                          'Return Reimbursed',
                                        ),
                                      ),
                                    ],
                                  )),
                                ],
                              )),
                        ),
                      ),
                    ],
                  )),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Text(
                  'Invest by category',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: GetBuilder<HomeController>(builder: (HomeController) {
                  return HomeController.getCategoryProgress
                      ? const Center(
                          child: CircularProgressIndicator(),
                        )
                      : RefreshIndicator(
                          onRefresh: () async {
                            HomeController.getCategory();
                          },
                          child: Row(
                            children:
                                HomeController.categoryDataModel.data!
                                    .map((e) => RemarkCategoryWidget(
                                          RemarkName: e.name.toString(),
                                          icon: FontAwesomeIcons.map,
                                          onTap: () {
                                            Get.toNamed(RouteNames.projectScreen);
                                          },
                                        ))
                                    .toList(),
                          ),
                        );
                }),
              ),
              RemarksTitleWidget(
                remarksName: 'Popular Project',
                onTapSeeAll: () {
                  Get.toNamed(RouteNames.projectScreen);
                },
              ),

              Padding(
                  padding: EdgeInsets.all(2.0),
                  child: GetBuilder<HomeController>(builder: (HomeController) {
                    return HomeController.getCategoryProgress
                        ? const Center(
                      child: CircularProgressIndicator(),
                    )
                        : RefreshIndicator(
                      onRefresh: () async {
                        HomeController.getCategory();
                      },
                      child: Column(
                        children: HomeController.projectTypeDataModel.data!
                            .map((e) => Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                              Expanded(
                                flex: 65,
                                child: InkWell(
                                  onTap: () {
                                    Get.toNamed(RouteNames.projectDetailsScreen);
                                  },
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                        child: Text(e.name.toString(), style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black),),
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
                                              fontWeight: FontWeight.w400,
                                              color: Colors.black),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Expanded(
                                              flex: 40,
                                              child: Column(
                                                children: [
                                                  Padding(
                                                    padding:
                                                    EdgeInsets.fromLTRB(8, 0, 0, 0),
                                                    child: Row(
                                                      children: [
                                                        CircleAvatar(
                                                          radius: 10,
                                                          backgroundColor:
                                                          Colors.deepOrange,
                                                          child: Center(
                                                            child: Icon(
                                                              Icons.add_alert_sharp,
                                                              color: Colors.white,
                                                              size: 10,
                                                            ),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: 4,
                                                        ),
                                                        Text('9%-1%Return'),
                                                      ],
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 4,
                                                  ),
                                                  Padding(
                                                    padding:
                                                    EdgeInsets.fromLTRB(8, 0, 0, 0),
                                                    child: Row(
                                                      children: [
                                                        CircleAvatar(
                                                          radius: 10,
                                                          backgroundColor:
                                                          Colors.deepOrange,
                                                          child: Center(
                                                            child: Icon(
                                                              Icons.add_alert_sharp,
                                                              color: Colors.white,
                                                              size: 10,
                                                            ),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: 4,
                                                        ),
                                                        Text('Bogura'),
                                                      ],
                                                    ),
                                                  )
                                                ],
                                              )),
                                          Expanded(
                                              flex: 40,
                                              child: Column(
                                                children: [
                                                  Padding(
                                                    padding:
                                                    EdgeInsets.fromLTRB(8, 0, 0, 0),
                                                    child: Row(
                                                      children: [
                                                        CircleAvatar(
                                                          radius: 10,
                                                          backgroundColor:
                                                          Colors.deepOrange,
                                                          child: Center(
                                                            child: Icon(
                                                              Icons.add_alert_sharp,
                                                              color: Colors.white,
                                                              size: 10,
                                                            ),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: 4,
                                                        ),
                                                        Text('5 Month'),
                                                      ],
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 4,
                                                  ),
                                                  Padding(
                                                    padding:
                                                    EdgeInsets.fromLTRB(8, 0, 0, 0),
                                                    child: Row(
                                                      children: [
                                                        CircleAvatar(
                                                          radius: 10,
                                                          backgroundColor:
                                                          Colors.deepOrange,
                                                          child: Center(
                                                            child: Icon(
                                                              Icons.add_alert_sharp,
                                                              color: Colors.white,
                                                              size: 10,
                                                            ),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: 4,
                                                        ),
                                                        Text('Variable'),
                                                      ],
                                                    ),
                                                  )
                                                ],
                                              )),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 25,
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      'assets/images/Agriculture.jpg',
                                      fit: BoxFit.fill,
                                      height: 100,
                                    ),
                                  ),
                                ),
                              ),

                          ],
                        ),
                            ),





                        )
                            .toList(),
                      ),
                    );
                  })),

             // Row(
             //      crossAxisAlignment: CrossAxisAlignment.start,
             //      mainAxisAlignment: MainAxisAlignment.start,
             //      children: [
             //        Expanded(
             //          flex: 65,
             //          child: InkWell(
             //            onTap: () {
             //              Get.toNamed(RouteNames.projectDetailsScreen);
             //            },
             //            child: Column(
             //              mainAxisAlignment: MainAxisAlignment.start,
             //              crossAxisAlignment: CrossAxisAlignment.start,
             //              children: [
             //                Padding(
             //                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
             //                  child: Text('jg'),
             //                ),
             //                SizedBox(
             //                  height: 4,
             //                ),
             //                Padding(
             //                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
             //                  child: Text(
             //                    '20,000 BDT/Unit',
             //                    style: TextStyle(
             //                        fontSize: 15,
             //                        fontWeight: FontWeight.w600,
             //                        color: Colors.black),
             //                  ),
             //                ),
             //                Row(
             //                  children: [
             //                    Expanded(
             //                        flex: 40,
             //                        child: Column(
             //                          children: [
             //                            Padding(
             //                              padding:
             //                              EdgeInsets.fromLTRB(8, 0, 0, 0),
             //                              child: Row(
             //                                children: [
             //                                  CircleAvatar(
             //                                    radius: 10,
             //                                    backgroundColor:
             //                                    Colors.deepOrange,
             //                                    child: Center(
             //                                      child: Icon(
             //                                        Icons.add_alert_sharp,
             //                                        color: Colors.white,
             //                                        size: 10,
             //                                      ),
             //                                    ),
             //                                  ),
             //                                  SizedBox(
             //                                    width: 4,
             //                                  ),
             //                                  Text('9%-1%Return'),
             //                                ],
             //                              ),
             //                            ),
             //                            SizedBox(
             //                              height: 4,
             //                            ),
             //                            Padding(
             //                              padding:
             //                              EdgeInsets.fromLTRB(8, 0, 0, 0),
             //                              child: Row(
             //                                children: [
             //                                  CircleAvatar(
             //                                    radius: 10,
             //                                    backgroundColor:
             //                                    Colors.deepOrange,
             //                                    child: Center(
             //                                      child: Icon(
             //                                        Icons.add_alert_sharp,
             //                                        color: Colors.white,
             //                                        size: 10,
             //                                      ),
             //                                    ),
             //                                  ),
             //                                  SizedBox(
             //                                    width: 4,
             //                                  ),
             //                                  Text('Bogura'),
             //                                ],
             //                              ),
             //                            )
             //                          ],
             //                        )),
             //                    Expanded(
             //                        flex: 40,
             //                        child: Column(
             //                          children: [
             //                            Padding(
             //                              padding:
             //                              EdgeInsets.fromLTRB(8, 0, 0, 0),
             //                              child: Row(
             //                                children: [
             //                                  CircleAvatar(
             //                                    radius: 10,
             //                                    backgroundColor:
             //                                    Colors.deepOrange,
             //                                    child: Center(
             //                                      child: Icon(
             //                                        Icons.add_alert_sharp,
             //                                        color: Colors.white,
             //                                        size: 10,
             //                                      ),
             //                                    ),
             //                                  ),
             //                                  SizedBox(
             //                                    width: 4,
             //                                  ),
             //                                  Text('5 Month'),
             //                                ],
             //                              ),
             //                            ),
             //                            SizedBox(
             //                              height: 4,
             //                            ),
             //                            Padding(
             //                              padding:
             //                              EdgeInsets.fromLTRB(8, 0, 0, 0),
             //                              child: Row(
             //                                children: [
             //                                  CircleAvatar(
             //                                    radius: 10,
             //                                    backgroundColor:
             //                                    Colors.deepOrange,
             //                                    child: Center(
             //                                      child: Icon(
             //                                        Icons.add_alert_sharp,
             //                                        color: Colors.white,
             //                                        size: 10,
             //                                      ),
             //                                    ),
             //                                  ),
             //                                  SizedBox(
             //                                    width: 4,
             //                                  ),
             //                                  Text('Variable'),
             //                                ],
             //                              ),
             //                            )
             //                          ],
             //                        )),
             //                  ],
             //                )
             //              ],
             //            ),
             //          ),
             //        ),
             //        Expanded(
             //          flex: 25,
             //          child: Padding(
             //            padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
             //            child: Container(
             //              decoration: BoxDecoration(
             //                //color: Colors.pink,
             //                  borderRadius: BorderRadius.circular(10)),
             //              child: Image.asset(
             //                'assets/images/Agriculture.jpg',
             //                fit: BoxFit.fill,
             //                height: 100,
             //              ),
             //            ),
             //          ),
             //        ),
             //      ],
             //    ),













              SizedBox(
                height: 5,
              ),
              RemarksTitleWidget(
                remarksName: 'Our Best Project',
                onTapSeeAll: () {
                  Get.toNamed(RouteNames.bestProject);
                },
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      RemarkBestProjrctWidget(
                        RemarkName: 'Goat farm',
                        onTap: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(builder: (context) => ProjectPageScreen()));
                          Get.toNamed(RouteNames.bestProject);
                        },
                        BadgRemarkName: '44,00BDT/unit',
                        child: Image.asset(
                          'assets/images/Cowmarket.jpeg',
                          //fit: BoxFit.fill,
                        ),
                      ),
                      RemarkBestProjrctWidget(
                        RemarkName: 'Goat farm',
                        onTap: () {
                          Get.toNamed(RouteNames.bestProject);
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(builder: (context) => ProjectPageScreen()));
                        },
                        BadgRemarkName: '44,00BDT/unit',
                        child: Image.asset(
                          'assets/images/Agriculture.jpg',
                          //fit: BoxFit.fill,
                        ),
                      ),
                      RemarkBestProjrctWidget(
                        RemarkName: 'Goat farm',

                        onTap: () {
                          Get.toNamed(RouteNames.bestProject);
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(builder: (context) => ProjectPageScreen()));
                        },
                        BadgRemarkName: '44,00BDT/unit',
                        child: Image.asset(
                          'assets/images/Cowmarket.jpeg',
                          //fit: BoxFit.fill,
                        ),
                      ),
                      RemarkBestProjrctWidget(
                        RemarkName: 'Goat farm',

                        onTap: () {
                          Get.toNamed(RouteNames.bestProject);
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(builder: (context) => ProjectPageScreen()));
                        },
                        BadgRemarkName: '44,00BDT/unit',
                        child: Image.asset(
                          'assets/images/Cowmarket.jpeg',
                          //fit: BoxFit.fill,
                        ),
                      ),
                      RemarkBestProjrctWidget(
                        RemarkName: 'Goat farm',
                        onTap: () {
                          Get.toNamed(RouteNames.bestProject);
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(builder: (context) => ProjectPageScreen()));
                        },
                        BadgRemarkName: '44,00BDT/unit',
                        child: Image.asset(
                          'assets/images/Cowmarket.jpeg',
                          //fit: BoxFit.fill,
                        ),
                      ),
                      RemarkBestProjrctWidget(
                        RemarkName: 'Goat farm',
                        onTap: () {
                          Get.toNamed(RouteNames.bestProject);
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(builder: (context) => ProjectPageScreen()));
                        },
                        BadgRemarkName: '44,00BDT/unit',
                        child: ClipRRect(
                          borderRadius:BorderRadius.circular(10),
                          child: Image.asset(
                            'assets/images/Cowmarket.jpeg',
                            //fit: BoxFit.fill
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              RemarksTitlebWidget(
                remarksName: 'Blog ',
                onTapSeeAll: () {
                  Get.toNamed(RouteNames.projectReviewList);
                },
              ),

              GetBuilder<HomeController>(builder: (HomeController) {
                return HomeController.reviewProjectProgress
                    ? const Center(
                  child: CircularProgressIndicator(),
                )
                    : RefreshIndicator(
                  onRefresh: () async {
                    HomeController.getReviewProcect();
                  },
                  child: Column(
                    children: HomeController.allProjectDataModel.data!
                        .map((e) =>  Card(

                          elevation: 15,
                          child: InkWell(
                            onTap: () {
                              Get.toNamed(RouteNames.projectReviewDetail,
                              arguments: {
                                       'id':e.id!.toString(),
                                     }

                              );
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
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(10),
                                            child: Image.asset(
                                              'assets/images/Agriculture.jpg',
                                              fit: BoxFit.fill,
                                              //height: 100,
                                            ),
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
                                                maxLines: 1,
                                                'bangladesh Interntional expo Targets the fundamental skills required for literacy: meaning of words, recognition of sounds, and recognition of spelling',
                                                style: TextStyle(

                                                    overflow: TextOverflow.ellipsis,
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
                                                      'Read More ' + e.id.toString(),
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
                );
              }),
              // Container(
              //     height: 270,
              //     width: double.infinity,
              //     decoration: BoxDecoration(
              //       color: Colors.white,
              //       borderRadius: BorderRadius.all(Radius.circular(10)),
              //     ),
              //     child: Column(
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //       children: [
              //         Expanded(
              //           flex: 55,
              //           child: Padding(
              //             padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
              //             child: Container(
              //               width: double.infinity,
              //               decoration: BoxDecoration(
              //                 //color: Colors.pink,
              //                   borderRadius: BorderRadius.circular(10)),
              //               child: Image.asset(
              //                 'assets/images/Agriculture.jpg',
              //                 fit: BoxFit.fill,
              //                 //height: 100,
              //               ),
              //             ),
              //           ),
              //         ),
              //         Expanded(
              //             flex: 40,
              //             child: Column(
              //               mainAxisAlignment: MainAxisAlignment.start,
              //               crossAxisAlignment: CrossAxisAlignment.start,
              //               children: [
              //                 Padding(
              //                   padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              //                   child: Text(
              //                     'Paddy Harvest-12',
              //                     style: TextStyle(
              //                         fontSize: 15,
              //                         fontWeight: FontWeight.w600,
              //                         color: Colors.black),
              //                   ),
              //                 ),
              //                 SizedBox(
              //                   height: 4,
              //                 ),
              //                 Padding(
              //                   padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              //                   child: Text(
              //                     '20,000 BDT/Unit',
              //                     style: TextStyle(
              //                         fontSize: 15,
              //                         fontWeight: FontWeight.w600,
              //                         color: Colors.black),
              //                   ),
              //                 ),
              //                 Padding(
              //                   padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              //                   child: Row(
              //                     crossAxisAlignment:
              //                     CrossAxisAlignment.end,
              //                     mainAxisAlignment:
              //                     MainAxisAlignment.end,
              //                     children: [
              //                       Padding(
              //                         padding: const EdgeInsets.all(8.0),
              //                         child: Text(
              //                           'Read More ',// + e.id.toString(),
              //                           style: TextStyle(
              //                               fontSize: 15,
              //                               fontWeight: FontWeight.w600,
              //                               color: Colors.black),
              //                         ),
              //                       ),
              //                     ],
              //                   ),
              //                 ),
              //               ],
              //             )),
              //       ],
              //     )),

              SizedBox(
                height: 8,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: Card(
                  elevation: 15,
                  child: Container(
                      height: 80,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.green[600],
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 20,
                            child: Center(
                              child: CircleAvatar(
                                radius: 30,
                                backgroundImage: AssetImage(
                                  'assets/images/Cowmarket.jpeg',
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                              flex: 75,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Have More queries',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                    ),
                                    child: TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Contact Us",
                                        style: TextStyle(
                                            color: Colors.green, fontSize: 15),
                                      ),
                                    ),
                                  )
                                ],
                              )),
                        ],
                      )),
                ),
              ),
            ]),
      ),
    );
  }
}

class RemarksTitleWidget extends StatelessWidget {
  RemarksTitleWidget({
    Key? key,
    required this.remarksName,
    required this.onTapSeeAll,
  }) : super(key: key);

  final String remarksName;
  final VoidCallback onTapSeeAll;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
          child: Text(
            remarksName,
            style: TitleTextStyle.copyWith(
                fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),
          ),
        ),
        TextButton(
          onPressed: onTapSeeAll,
          child: Text(
            'See all',
            style: TextStyle(color: Colors.green),
          ),
        )
      ],
    );
  }
}


class RemarksTitlebWidget extends StatelessWidget {
  RemarksTitlebWidget({
    Key? key,
    required this.remarksName,
    required this.onTapSeeAll,
  }) : super(key: key);

  final String remarksName;
  final VoidCallback onTapSeeAll;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
          child: Text(
            remarksName,
            style: TitleTextStyle.copyWith(
                fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),
          ),
        ),
        TextButton(
          onPressed: onTapSeeAll,
          child: Text(
           "",
          ),
        )
      ],
    );
  }
}