import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:idlofi_tugas2_flutter/pages/header_page.dart';
import 'package:idlofi_tugas2_flutter/pages/menu_page.dart';
import 'package:idlofi_tugas2_flutter/pages/promo_page.dart';
import 'package:idlofi_tugas2_flutter/pages/recommendation_page.dart';
import 'package:idlofi_tugas2_flutter/theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  List<Widget> children = [
    Home(),
    Center(
      child: Text(
        "Ini adalah search",
      ),
    ),
    Center(
      child: Text(
        "Ini adalah recent",
      ),
    ),
    Center(
      child: Text(
        "Ini adalah profile",
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 73,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              offset: Offset(0, -8),
              blurRadius: 10,
              color: Color.fromRGBO(0, 0, 0, 0.04),
            ),
          ],
        ),
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/home_page/icons/icon_home.svg',
                color: _currentIndex == 0 ? toscaColor : greyColor,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/home_page/icons/icon_search.svg',
                color: _currentIndex == 1 ? toscaColor : greyColor,
              ),
              label: "Search",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/home_page/icons/icon_refresh-circle.svg',
                color: _currentIndex == 2 ? toscaColor : greyColor,
              ),
              label: "Recent",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/home_page/icons/icon_person.svg',
                color: _currentIndex == 3 ? toscaColor : greyColor,
              ),
              label: "Profile",
            ),
          ],
          type: BottomNavigationBarType.fixed,
          iconSize: 24,
          selectedItemColor: toscaColor,
          unselectedItemColor: greyColor,
          selectedLabelStyle: w500toscaTextStyle.copyWith(
            fontSize: 16,
          ),
          unselectedLabelStyle: w500greyTextStyle.copyWith(
            fontSize: 16,
          ),
          showUnselectedLabels: true,
          currentIndex: _currentIndex,
          onTap: (val) {
            setState(() {
              _currentIndex = val;
            });
          },
        ),
      ),
      body: children.elementAt(_currentIndex),
    );
  }
}

class Home extends StatelessWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            SizedBox(
              height: 8,
            ),
            PromoPage(),
            SizedBox(
              height: 40,
            ),
            MenuPage(),
            SizedBox(
              height: 40,
            ),
            RecommendationPage(),
          ],
        ),
      ),
    );
  }
}
