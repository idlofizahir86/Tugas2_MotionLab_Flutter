import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:idlofi_tugas2_flutter/theme.dart';

class MenuItem extends StatelessWidget {
  final String imgUrl;
  final String menuName;
  final String routeName;

  const MenuItem({
    Key? key,
    this.imgUrl = '',
    this.menuName = '',
    this.routeName = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, routeName);
      },
      child: Container(
        child: Column(
          children: [
            Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: borderColor,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    imgUrl,
                    width: 24,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              menuName,
              style: w500blackTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
