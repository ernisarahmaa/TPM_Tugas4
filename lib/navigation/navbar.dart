import 'package:flutter/material.dart';
import 'package:tugas4/guide.dart';
import 'package:tugas4/landing.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController pageController=PageController();
  List<Widget>pages=[const LandingPage(), GuidePage()];

  int selectedIndex = 0;
  void onPageChanged(int index){
    setState(() {
      selectedIndex=index;
    });
  }

  void onItemTapped(int selectedItems) {
    pageController.jumpToPage(selectedItems);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: pages,
        onPageChanged: onPageChanged,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        onTap: onItemTapped,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_rounded,
                color: selectedIndex==0?Colors.teal:Colors.grey,
              ),
              title: Text(
                "Home",
                style: TextStyle(
                  color: selectedIndex==0?Colors.teal:Colors.grey,
                  fontSize: 15,
                ),
              ),
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.wysiwyg_rounded,
                color: selectedIndex==1?Colors.teal:Colors.grey,
              ),
              title: Text(
                "Guide",
                style: TextStyle(
                  color: selectedIndex==1?Colors.teal:Colors.grey,
                  fontSize: 15,
                ),
              ),
          ),
        ],
      ),
    );
  }
}