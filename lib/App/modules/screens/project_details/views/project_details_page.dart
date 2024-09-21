import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:smart_biniyog/App/modules/Screens/about_page.dart';
import 'package:smart_biniyog/App/modules/Screens/summary_page.dart';
import 'package:smart_biniyog/App/modules/Screens/profit_simulation/views/profit_simu_page.dart';
import 'package:smart_biniyog/App/modules/Widgets/AppElevatedButtonWidget.dart';
import 'package:smart_biniyog/App/modules/screens/project_review/views/project_reviewlist_page.dart';
import 'package:smart_biniyog/App/modules/screens/project_review/views/project_reviews.dart';

class ProjectDetailScreen extends StatefulWidget {
  const ProjectDetailScreen({Key? key}) : super(key: key);

  @override
  _ProjectDetailScreenState createState() => _ProjectDetailScreenState();
}

class _ProjectDetailScreenState extends State<ProjectDetailScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    _tabController.addListener(() {
      if (!_tabController.indexIsChanging) {
        setState(() {
          _selectedIndex = _tabController.index;
        });
      }
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void _onButtonPressed() {
    if (_selectedIndex == 0) {
      setState(() {
        _tabController.index=1;
      });

    } else if (_selectedIndex == 1) {
      setState(() {
        _tabController.index=2;
      });

    } else if (_selectedIndex == 2) {
      setState(() {
        _tabController.index=3;
      });

    } else if (_selectedIndex == 3) {
      // Action for About tab
      print("About tab action");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Project Details',
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart))
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 30,
            child: Row(
              children: [
                Container(
                  color: Colors.green,
                  child: Center(
                    child: Image.asset(
                      'assets/images/Agriculture.jpg',
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 55,
            child: Column(
              children: [
                Container(
                  color: Colors.black12,
                  child: TabBar(
                    controller: _tabController,
                    indicatorColor: Colors.teal,
                    labelColor: Colors.teal,
                    unselectedLabelColor: Colors.black,
                    isScrollable: true,
                    tabs: [
                      Tab(text: 'Pr_reviews'),
                      Tab(text: 'Summary'),
                      Tab(text: 'About'),
                      Tab(text: 'Profit Simulation'),

                    ],
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      Center(child: ProjectReviews()),
                      Center(child: SummaryScreen()),
                      Center(child: AboutSreen()),
                      Center(child: ProfitSimuScreen()),

                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: AppElevatedButton(
              Color: Colors.green,
              onTap: _onButtonPressed,
              child: Center(
                child: Text(
                  _selectedIndex == 0 ? "Next" :
                  _selectedIndex == 3 ? "Next" : "Add to Cart",
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
