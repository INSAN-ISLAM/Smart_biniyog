import 'package:flutter/cupertino.dart';
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

  HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff38b579),
        leading: Padding(
          padding: const EdgeInsets.only(left: 10.0, bottom: 8.0, top: 8.0),
          child: CircleAvatar(
            child: Image.asset(
              'assets/images/smart_biniyog.png',
              fit: BoxFit.fill,
            ),
          ),
        ),
        title: Text("Welcome to Smart Biniyog",
            style: TextStyle(
                color: Colors.white,
                overflow: TextOverflow.fade,
                fontSize: 16,
                fontWeight: FontWeight.bold)),
        actions: [
          IconButton(
              onPressed: () {
                Get.toNamed(RouteNames.myCardScreen);
              },
              icon: const Icon(
                Icons.shopping_cart,
                color: Colors.white,
              )),
        ],
      ),

      floatingActionButtonLocation:FloatingActionButtonLocation.endFloat,

      floatingActionButton: FloatingActionButton.small(
        elevation: 10,
        child: Icon(Icons.phone,color: Colors.white) ,
        backgroundColor: Color(0xff38b579),
        onPressed: (){



        },
      ),


      body: GetBuilder<HomeController>(
  builder: (_) {
    return homeController.getCategoryProgress? Center(child: CircularProgressIndicator(color: Color(0xff38b579),)): SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  height: 480,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Color(0xff38b579),
                 //   borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12),bottomRight: Radius.circular(12))
                  ),

                  child: Column(
                    children: [
                      CarouselSlider(
                        options: CarouselOptions(
                            height: 178.0,
                            viewportFraction: 1,
                            autoPlayInterval: Duration(seconds: 2),
                            autoPlay: true,
                            autoPlayCurve: Curves.linear,
                            onPageChanged: (index, _) {
                              _currentCarouselIndex.value = index;
                            }),
                        items: [1, 2, 3, 4, 5].map((i) {
                          return Builder(
                            builder: (BuildContext context) {
                              return Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: primaryColor),
                                    alignment: Alignment.center,
                                    child: Text(
                                      'text $i',
                                      style: TextStyle(fontSize: 16.0),
                                    )),
                              );
                            },
                          );
                        }).toList(),
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
                                      height: 7,
                                      width: 7,
                                      decoration: BoxDecoration(
                                          color: currentValue == i
                                              ? blackColor
                                              : Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                    ),
                                  )
                              ],
                            );
                          }),
                      Padding(
                        padding: EdgeInsets.fromLTRB(8, 10, 8, 0),
                        child: Card(
                          elevation: 5,
                          child: Container(
                              padding: EdgeInsets.all(20.0),
                              height: 230,
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
                                      Icon(
                                        Icons.home_work,
                                        color: Color(0xff38b579),
                                      ),
                                      SizedBox(height: 8.0),
                                      Row(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                        Text(
                                          '৳',
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                              color: Color(0xff38b579)
                                          ),
                                        ),
                                        SizedBox(width: 8.0),
                                        Text(
                                          '617M +',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ]),

                                      Text(
                                        'Funds Disbursed',
                                        style: TextStyle(
                                          color: Colors.black54,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 22,
                                      ),
                                      Icon(
                                        Icons.people,
                                        color: Color(0xff38b579),
                                      ),
                                      SizedBox(height: 8.0),
                                      Row(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              '617M +',
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ]),

                                      Text(
                                        'Farmers Engaged',
                                        style: TextStyle(
                                          color: Colors.black54,
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
                                          Icon(
                                            Icons.hail_outlined,
                                            color: Color(0xff38b579),
                                          ),
                                          SizedBox(height: 8.0),
                                          Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  '৳',
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight: FontWeight.bold,
                                                      color: Color(0xff38b579)
                                                  ),
                                                ),
                                                SizedBox(width: 8.0),
                                                Text(
                                                  '617M +',
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ]),

                                          Text(
                                            'Agricultural Yield',
                                            style: TextStyle(
                                              color: Colors.black54,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 22,
                                          ),
                                          Icon(
                                            Icons.money,
                                            color: Color(0xff38b579),
                                          ),
                                          SizedBox(height: 8.0),
                                          Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  '617M +',
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ]),

                                          Text(
                                            'Return Reimbursed',
                                            style: TextStyle(
                                              color: Colors.black54,
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
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Text(
                  'Invest by category',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.black.withOpacity(0.6)),
                ),
              ),
              SizedBox(
                height: 5,
              ),


              SizedBox(
                height: 100.0,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: homeController.categories.length,
                    shrinkWrap: true,
                    itemBuilder: (context,index){
                      return RemarkCategoryWidget(RemarkName: homeController.categories[index].name!, icon: Icons.shop_2_rounded , onTap: (){
                        Get.toNamed(RouteNames.projectScreen);
                      });
                    }),
              ),

              // SingleChildScrollView(
              //   scrollDirection: Axis.horizontal,
              //
              //
              //   child: GetBuilder<HomeController>(builder: (HomeController) {
              //     return HomeController.getCategoryProgress
              //         ? const Center(
              //             child: CircularProgressIndicator(),
              //           )
              //         : RefreshIndicator(
              //             onRefresh: () async {
              //               HomeController.getCategory();
              //             },
              //             child: Row(
              //               children: HomeController.categoryDataModel.data!
              //                   .map((e) => RemarkCategoryWidget(
              //                         RemarkName: e.name.toString(),
              //                         icon: FontAwesomeIcons.map,
              //                         onTap: () {
              //                           Get.toNamed(RouteNames.projectScreen);
              //                         },
              //                       ))
              //                   .toList(),
              //             ),
              //           );
              //   }),
              // ),
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
                              children:
                                  HomeController.projectTypeDataModel.data!
                                      .map(
                                        (e) => Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 10),
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Expanded(
                                                flex: 65,
                                                child: InkWell(
                                                  onTap: () {
                                                    Get.toNamed(RouteNames
                                                        .projectDetailsScreen);
                                                  },
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.fromLTRB(
                                                                10, 0, 0, 0),
                                                        child: Text(
                                                          e.name.toString(),
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
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
                                                        child: Text(
                                                          '20,000 BDT/Unit',
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              color:
                                                                  Colors.black),
                                                        ),
                                                      ),
                                                      Row(
                                                        children: [
                                                          Expanded(
                                                              flex: 40,
                                                              child: Column(
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsets
                                                                        .fromLTRB(
                                                                            8,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                    child: Row(
                                                                      children: [
                                                                        CircleAvatar(
                                                                          radius:
                                                                              10,
                                                                          backgroundColor:
                                                                              Colors.deepOrange,
                                                                          child:
                                                                              Center(
                                                                            child:
                                                                                Icon(
                                                                              Icons.add_alert_sharp,
                                                                              color: Colors.white,
                                                                              size: 10,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        SizedBox(
                                                                          width:
                                                                              4,
                                                                        ),
                                                                        Text(
                                                                            '9%-1%Return'),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    height: 4,
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsets
                                                                        .fromLTRB(
                                                                            8,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                    child: Row(
                                                                      children: [
                                                                        CircleAvatar(
                                                                          radius:
                                                                              10,
                                                                          backgroundColor:
                                                                              Colors.deepOrange,
                                                                          child:
                                                                              Center(
                                                                            child:
                                                                                Icon(
                                                                              Icons.add_alert_sharp,
                                                                              color: Colors.white,
                                                                              size: 10,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        SizedBox(
                                                                          width:
                                                                              4,
                                                                        ),
                                                                        Text(
                                                                            'Bogura'),
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
                                                                    padding: EdgeInsets
                                                                        .fromLTRB(
                                                                            8,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                    child: Row(
                                                                      children: [
                                                                        CircleAvatar(
                                                                          radius:
                                                                              10,
                                                                          backgroundColor:
                                                                              Colors.deepOrange,
                                                                          child:
                                                                              Center(
                                                                            child:
                                                                                Icon(
                                                                              Icons.add_alert_sharp,
                                                                              color: Colors.white,
                                                                              size: 10,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        SizedBox(
                                                                          width:
                                                                              4,
                                                                        ),
                                                                        Text(
                                                                            '5 Month'),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    height: 4,
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsets
                                                                        .fromLTRB(
                                                                            8,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                    child: Row(
                                                                      children: [
                                                                        CircleAvatar(
                                                                          radius:
                                                                              10,
                                                                          backgroundColor:
                                                                              Colors.deepOrange,
                                                                          child:
                                                                              Center(
                                                                            child:
                                                                                Icon(
                                                                              Icons.add_alert_sharp,
                                                                              color: Colors.white,
                                                                              size: 10,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        SizedBox(
                                                                          width:
                                                                              4,
                                                                        ),
                                                                        Text(
                                                                            'Variable'),
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
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                          0, 0, 5, 0),
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
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
                          borderRadius: BorderRadius.circular(10),
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

              Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                child: Text(
                  'Read Blog',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.black.withOpacity(0.6)),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              
              ListView.builder(
                shrinkWrap: true,
                  itemCount: 5,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context,index){
                    return Padding(
                      padding: const EdgeInsets.only(left: 10.0,right: 10.0,bottom: 6.0),
                      child: Card(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                                child: Image.asset('assets/images/Agriculture.jpg',height: 140.0,width: Get.width,fit: BoxFit.cover),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0),topRight: Radius.circular(10.0)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0,right: 8.0,top: 8.0, bottom: 4),
                              child: Text('What is Lorem Ipsum?',style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black.withOpacity(0.8),
                              )),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 10.0),
                              child: Text(
                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black.withOpacity(0.6),
                                ),
                                maxLines: 4, // Limit to two lines
                                overflow: TextOverflow.ellipsis, // Show ellipsis for overflow text
                              ),
                            ),

                            Align(
                              alignment: Alignment.centerRight,
                              child: GestureDetector(
                                onTap: (){},
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 16.0,bottom: 10.0),
                                  child: Text('See more',style: TextStyle(
                                    color: Colors.black.withOpacity(0.7)
                                  )),
                                ),
                              ),
                            )


                          ]
                        ),
                      ),
                    );
                    
                  }),
              
              SizedBox(
                height: 8,
              ),
            ]),
      );
  },
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
