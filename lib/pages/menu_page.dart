import 'package:flutter/material.dart';
import 'package:idlofi_tugas2_flutter/components/menu_item.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 20,
      ),
      height: 73,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MenuItem(
            imgUrl: 'assets/home_page/icons/icon_food.svg',
            menuName: 'Food',
            routeName: '/food',
          ),
          MenuItem(
            imgUrl: 'assets/home_page/icons/icon_table.svg',
            menuName: 'Table',
          ),
          MenuItem(
            imgUrl: 'assets/home_page/icons/icon_payment.svg',
            menuName: 'Payment',
          ),
          MenuItem(
            imgUrl: 'assets/home_page/icons/icon_more.svg',
            menuName: 'More',
          ),
        ],
      ),
    );
  }
}
