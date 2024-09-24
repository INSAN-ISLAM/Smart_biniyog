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
        }
        );
      }
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  // Method to handle button press
  void _onButtonPressed() {
    if (_selectedIndex < _tabController.length - 1) {
      // If not the last tab, go to the next tab
      _tabController.animateTo(_selectedIndex + 1);
    } else {
      // Handle Add to Cart functionality here
      print("Add to Cart clicked");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios, color: Colors.white),
        backgroundColor: Color(0xff38b579),
        title: Text(
          'Project Details',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 27,
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
                    indicatorColor: Color(0xff38b579),
                    labelColor: Color(0xff38b579),
                    unselectedLabelColor: Colors.black,
                    isScrollable: true,
                    tabs: [
                      Tab(text: 'Project Reviews'),
                      Tab(text: 'About'),
                      Tab(text: 'Summary'),
                      Tab(text: 'Profit Simulation'),
                    ],
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      Center(child: ProjectReviews()),
                      Center(child: AboutSreen()),
                      Center(child: SummaryScreen()),
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
                  _selectedIndex == _tabController.length - 1 // Check if it's the last tab
                      ? "Add to Cart" // Show "Add to Cart" for the last tab
                      : "Next", // Show "Next" for other tabs
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
