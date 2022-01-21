import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:idlofi_tugas2_flutter/theme.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hi, Michael",
                style: w600blackTextStyle.copyWith(
                  fontSize: 24,
                ),
              ),
              Text(
                "Get your favorite food here!",
                style: w500blackTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ],
          ),
          Container(
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                SvgPicture.asset(
                  'assets/home_page/icons/icon_cart.svg',
                  width: 28,
                ),
                Container(
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                    color: toscaColor,
                    borderRadius: BorderRadius.circular(
                      24,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}