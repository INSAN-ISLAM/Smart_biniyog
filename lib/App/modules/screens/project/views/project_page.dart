import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_biniyog/App/modules/screens/allproject/views/all_project_page.dart';
import 'package:smart_biniyog/App/modules/screens/fixed_term/views/fixed_term_page.dart';
import 'package:smart_biniyog/App/modules/screens/long_term/views/long_term_page.dart';

import 'package:smart_biniyog/App/modules/screens/project/controller/project_controller.dart';
import 'package:smart_biniyog/App/modules/screens/short_term/views/shor_term-page.dart';
import 'package:smart_biniyog/App/modules/screens/variable_term/views/variable_page.dart';
import 'package:smart_biniyog/App/routes/route_names.dart';

class ProjectPageScreen extends GetView<ProjectController> {
  const ProjectPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Center(child: const Text('All Projects')),
          actions: [
            IconButton(
                onPressed: () {
                  Get.toNamed(RouteNames.myCardScreen);
                },
                icon: Icon(
                  Icons.shopping_cart,
                  color: Colors.grey,
                )),
            IconButton(onPressed: () {}, icon: Icon(Icons.search))
          ],
        ),
        body: Column(
          children: [
            Divider(
              color: Colors.grey,
              // height: 10,
              thickness: 2,
              // indent: 20,
              // endIndent: 20,
            ),
            Expanded(
              flex: 7,
              child: Column(
                children: [
                  Container(
                    color: Colors.black12, // Background color for TabBar
                    child: TabBar(
                      indicatorColor:
                          Colors.teal, // Indicator color for selected tab
                      labelColor: Colors.teal, // Color for selected tab text
                      unselectedLabelColor: Colors.black,
                      isScrollable: true, // Color for unselected tab text
                      tabs: [
                        Tab(text: 'All Project'),
                        Tab(text: 'Short Term'),
                        Tab(text: 'Variable Return'),
                        Tab(text: 'Long Term '),
                        Tab(text: 'Fixed Term '),
                      ],
                    ),
                  ),
                   Expanded(
                    child: TabBarView(
                      children: [
                         Center(child: AllProjectScreen()),
                         Center(child: ShortTermScreen()),
                         Center(child: VariableTermScreen()),
                         Center(child: LongTermScreen()),
                         Center(child: FixedTermScreen()),
                      ],
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
