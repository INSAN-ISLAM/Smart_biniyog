import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:smart_biniyog/App/modules/Screens/about_page.dart';
import 'package:smart_biniyog/App/modules/Screens/summary_page.dart';
import 'package:smart_biniyog/App/modules/Screens/profit_simulation/views/profit_simu_page.dart';
import 'package:smart_biniyog/App/modules/Screens/project_details/controller/project_details-controller.dart';
import 'package:smart_biniyog/App/modules/Widgets/AppElevatedButtonWidget.dart';

class ProjectDetailScreen extends GetView<ProjectDetailsController> {
  const ProjectDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(title: Center(child: Text('Project Details',

        ),
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart))

        ],


        ),
        body:Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Expanded(
              flex: 30,
              child: Row(
                children: [
                  Container(

               color: Colors.green,

                  child: Center(
                    child: Image.asset('assets/images/Agriculture.jpg',
                      width: MediaQuery.of(context).size.width,
                  fit: BoxFit.fill,

                    ),
                  ),
            ),
                ],
              ),),





            Expanded(
              flex: 50,
              child: Column(
                children: [
                  Container(
                    color: Colors.black12, // Background color for TabBar
                    child: TabBar(
                      indicatorColor: Colors.teal, // Indicator color for selected tab
                      labelColor: Colors.teal, // Color for selected tab text
                      unselectedLabelColor:
                      Colors.black,
                      isScrollable:true,// Color for unselected tab text
                      tabs: [
                        Tab(text: 'Summary'),
                        Tab(text: 'Profit_Simulation'),
                        Tab(text: 'About'),
                      ],
                    ),
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        Center(child: SummaryScreen()),
                        Center(child: ProfitSimuScreen()),
                        Center(child: AboutSreen()),
                      ],
                    ),
                  ),





                ],
              ),),







            Expanded(
                flex: 10,

                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [



                      SizedBox(height: 10,),
                      Container(
                        height: 48,
                        color: Colors.white,

                        child: AppElevatedButton(
                          Color: Colors.green,
                          onTap: () {



                          },

                          child:  Center(
                            child: Text("Book Now",
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                  color: Color(0xFFFFFFFF),
                                  fontSize: 14,
                                  //fontWeight: FontWeight.w700,

                                ),
                              ),

                            ),
                          ),
                        ),
                      ),


         ],
                  ),
                ))
          ],
        ),


        floatingActionButtonLocation:FloatingActionButtonLocation.endFloat,

        floatingActionButton: FloatingActionButton(
          elevation: 10,
          child: Icon(Icons.phone) ,
          backgroundColor: Colors.green,
          onPressed: (){

          },
        ),
      ),
    );
  }
}
