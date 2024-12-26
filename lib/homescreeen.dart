import 'package:flutter/material.dart';
import 'package:to_do/tabs/setting.dart';
import 'package:to_do/tabs/tasks.dart';
import 'addtask.dart';

class Homescreeen extends StatefulWidget {
  static const String routeName = 'Homescreeen';

  @override
  State<Homescreeen> createState() => _HomescreeenState();
}

class _HomescreeenState extends State<Homescreeen> {
  int selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        backgroundColor: Color(0xffDFECDB),
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            'ToDo',
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
            ),
          ),
        ),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniCenterDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (context) {
                return Padding(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom),
                  child: Addtask(),
                );
              },
            );
          },
          backgroundColor: Colors.blue,
          shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(35),
              borderSide: BorderSide(color: Colors.transparent)),
          child: Icon(
            Icons.add,
            color: Colors.white,
            size: 35,
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.white,
          padding: EdgeInsets.zero,
          notchMargin: 8,
          shape: CircularNotchedRectangle(),
          child: BottomNavigationBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
              selectedItemColor: Colors.blue,
              unselectedItemColor: Colors.grey,
              iconSize: 30,
              onTap: (index) {
                selectedindex = index;
                setState(() {});
              },
              currentIndex: selectedindex,
              showUnselectedLabels: false,
              showSelectedLabels: false,
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.list), label: ""),
                BottomNavigationBarItem(icon: Icon(Icons.settings), label: ""),
              ]),
        ),
        body: tabs[selectedindex]);
  }

  List<Widget> tabs = [TasksTab(), SettingTab()];
}
