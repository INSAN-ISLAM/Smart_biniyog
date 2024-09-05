import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:smart_biniyog/App/modules/Screens/more_page/views/more_page.dart';
import 'package:smart_biniyog/App/modules/Screens/myfarm/views/myfarms_page.dart';
import 'package:smart_biniyog/App/modules/Screens/navigation_bar/controller/navigaion_controller.dart';

import 'package:smart_biniyog/App/modules/screens/project/views/project_page.dart';
import '../../home/views/home_page.dart';


class MainBottomNavBar extends StatefulWidget {
  const  MainBottomNavBar({Key? key}) : super(key: key);

  @override
  State<MainBottomNavBar> createState() => _MainBottomNavBarState();
}

class _MainBottomNavBarState extends State<MainBottomNavBar> {
  int _selectedScreen = 0;
  final List<Widget> _screens =  [
    MyHomePageScreen(),
    ProjectPageScreen(),
    MyFarmsScreen(),
    MorePageScreen(),

  ];











  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<NavigatinController>(
        builder: (_) {
          return SafeArea(
            child: Column(
              children: [

                Expanded(child: _screens[_selectedScreen]),
              ],
            ),
          );
        }
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black38,
        backgroundColor: Colors.white,
        showUnselectedLabels: true,
        onTap: (index) {
          _selectedScreen = index;
          setState(() {});
        },
        elevation: 4,
        currentIndex: _selectedScreen,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_tree_outlined), label: 'Projects'),
          BottomNavigationBarItem(
              icon: Icon(Icons.support_agent_outlined), label: 'My Farm'),
          BottomNavigationBarItem(
              icon: Icon(Icons.dataset), label: 'More'),

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


    );
  }
}