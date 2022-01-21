import 'package:flutter/material.dart';

class PromoItem extends StatelessWidget {
  final String imgUrl;
  const PromoItem({
    Key? key,
    this.imgUrl = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 312,
      height: 160,
      child: Image.asset(
        imgUrl,
      ),
    );
  }
}
