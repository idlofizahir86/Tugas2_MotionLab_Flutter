import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:idlofi_tugas2_flutter/theme.dart';

class PlusMinus extends StatefulWidget {
  const PlusMinus({Key? key}) : super(key: key);

  @override
  _PlusMinusState createState() => _PlusMinusState();
}

class _PlusMinusState extends State<PlusMinus> {
  int _n = 1;

  void plus() {
    setState(() {
      _n++;
    });
  }

  void minus() {
    setState(() {
      if (_n != 1) _n--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 91,
      height: 24,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: minus,
              child: SvgPicture.asset(
                'assets/home_page/icons/icon_minus.svg',
                color: _n == 1 ? greyColor : toscaColor,
                width: 24,
              ),
            ),
            Text(
              '$_n',
              style: w500blackTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
            InkWell(
              onTap: plus,
              child: SvgPicture.asset(
                'assets/home_page/icons/icon_add.svg',
                color: toscaColor,
                width: 24,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
