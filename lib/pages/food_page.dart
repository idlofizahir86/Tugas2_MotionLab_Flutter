import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:idlofi_tugas2_flutter/components/food_menu_item.dart';
import 'package:idlofi_tugas2_flutter/components/list_chips.dart';
import 'package:idlofi_tugas2_flutter/theme.dart';

class FoodPage extends StatelessWidget {
  const FoodPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: setAppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 24,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: whiteColor,
                  border: Border.all(
                    color: Color.fromRGBO(179, 179, 179, 0.4),
                  ),
                ),
                height: 46,
                child: Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16,
                      ),
                      child: SvgPicture.asset(
                        'assets/home_page/icons/icon_search.svg',
                        width: 20,
                        color: greyColor,
                      ),
                    ),
                    Container(
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 40,
                          ),
                          hintText: 'Search Food',
                          hintStyle: w400greyTextStyle.copyWith(
                            fontSize: 16,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ListChips(),
              Container(
                margin: EdgeInsets.only(
                  left: 20,
                  top: 24,
                  bottom: 30,
                ),
                child: FittedBox(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          FoodMenuItem(
                            imgUrl: 'assets/food_page/menu/menu_1.png',
                            menuName: 'Meatball Sweatie',
                            rating: 4.9,
                            harga: 63.500,
                          ),
                          FoodMenuItem(
                            imgUrl: 'assets/food_page/menu/menu_2.png',
                            menuName: 'Noodle Ex',
                            rating: 4.8,
                            harga: 42.000,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Row(
                        children: [
                          FoodMenuItem(
                            imgUrl: 'assets/food_page/menu/menu_3.png',
                            menuName: 'Burger Ala Ala',
                            rating: 4.7,
                            harga: 55.500,
                          ),
                          FoodMenuItem(
                            imgUrl: 'assets/food_page/menu/menu_4.png',
                            menuName: 'Chicken Collage',
                            rating: 4.5,
                            harga: 78.200,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Row(
                        children: [
                          FoodMenuItem(
                            imgUrl: 'assets/food_page/menu/menu_5.png',
                            menuName: 'Fried Rice Uenak',
                            rating: 4.6,
                            harga: 34.000,
                          ),
                          FoodMenuItem(
                            imgUrl: 'assets/food_page/menu/menu_6.png',
                            menuName: 'Chocolate Cream',
                            rating: 4.7,
                            harga: 23.000,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class setAppBar extends StatelessWidget with PreferredSizeWidget {
  final Size preferredSize;

  setAppBar({
    Key? key,
  })  : preferredSize = Size.fromHeight(56),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.only(
          left: 20,
          right: 16,
          top: 16,
          bottom: 16,
        ),
        decoration: BoxDecoration(
          color: whiteColor,
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 6),
              blurRadius: 10,
              color: Color.fromRGBO(0, 0, 0, 0.04),
            ),
          ],
        ),
        width: double.infinity,
        height: 56,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: SvgPicture.asset(
                    'assets/home_page/icons/icon_arrow-back.svg',
                    width: 24,
                    color: blackColor,
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Text(
                  'Food',
                  style: w600blackTextStyle.copyWith(
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            SvgPicture.asset(
              'assets/home_page/icons/icon_cart.svg',
              width: 24,
              color: blackColor,
            ),
          ],
        ),
      ),
    );
  }
}
