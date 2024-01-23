import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:to_du/pages/home/view/home_view.dart';
import 'package:to_du/pages/minu_box_view/minu_box_view.dart';

class BottomNaviGatorBarView extends StatefulWidget {
  const BottomNaviGatorBarView({super.key});

  @override
  State<BottomNaviGatorBarView> createState() => _BottomNaviGatorBarViewState();
}

class _BottomNaviGatorBarViewState extends State<BottomNaviGatorBarView> {
  List hamasi = [
    HomePages(),
    InboxView(),
    HomePages(),
    HomePages(),
  ];
  int curret = 0;


  void _onItemTapped(int index) {
    setState(() {
      curret = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: hamasi.elementAt(curret),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/icons/home.svg"), label: ""),
          BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/icons/calendal.svg"), label: ""),
          BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/icons/tt.svg"), label: ""),
          BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/icons/add1.svg"), label: ""),
        ],
        onTap: _onItemTapped,
        currentIndex: curret,
      ),
    );
  }
}
