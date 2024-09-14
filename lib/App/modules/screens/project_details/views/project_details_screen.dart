import 'package:flutter/material.dart';
import 'package:smart_biniyog/App/modules/Screens/profit_simulation/views/profit_simu_page.dart';
import 'package:smart_biniyog/App/modules/Screens/summary_page.dart';

class ProjectDetailsScreen extends StatefulWidget {
  @override
  _ProjectDetailsScreenState createState() => _ProjectDetailsScreenState();
}

class _ProjectDetailsScreenState extends State<ProjectDetailsScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late ScrollController _scrollController;
  bool _isScrollListenerAttached = false;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _scrollController = ScrollController();

    _tabController.addListener(() {
      if (_tabController.indexIsChanging) {
        _scrollController.jumpTo(_tabController.index * MediaQuery.of(context).size.height);
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!_isScrollListenerAttached) {
        _scrollController.addListener(() {
          double scrollPosition = _scrollController.position.pixels;
          double screenHeight = MediaQuery.of(context).size.height;
          if (scrollPosition >= screenHeight) {
            _tabController.animateTo(1);
          } else {
            _tabController.animateTo(0);
          }
        });
        _isScrollListenerAttached = true;
      }
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Project Details'),
      ),
      body: Column(
        children: [
          // The Image at the top
          Container(
            color: Colors.green,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              'assets/images/Agriculture.jpg',
              fit: BoxFit.cover,
            ),
          ),

          // The TabBar
          Container(
            color: Colors.black12, // TabBar background color
            child: TabBar(
              controller: _tabController,
              indicatorColor: Colors.teal, // Color for selected tab indicator
              labelColor: Colors.teal, // Color for selected tab text
              unselectedLabelColor: Colors.black, // Color for unselected tab text
              tabs: [
                Tab(text: 'Summary'),
                Tab(text: 'Profit Simulation'),
              ],
            ),
          ),

          // The TabBarView that shows content for each tab
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                // Adding SingleChildScrollView to wrap the SummaryScreen and ProfitSimuScreen
                SingleChildScrollView(
                  child: Center(child: SummaryScreen()),
                ),
                SingleChildScrollView(
                  child: Center(child: ProfitSimuScreen()),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

}
