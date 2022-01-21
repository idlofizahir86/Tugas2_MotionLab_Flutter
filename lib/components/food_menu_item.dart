import 'package:flutter/material.dart';
import 'package:idlofi_tugas2_flutter/components/plus_minus_button.dart';
import 'package:idlofi_tugas2_flutter/theme.dart';

class FoodMenuItem extends StatelessWidget {
  final String imgUrl;
  final String menuName;
  final double rating;
  final double harga;
  const FoodMenuItem({
    Key? key,
    this.imgUrl = '',
    this.menuName = '',
    this.rating = 0,
    this.harga = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
          isScrollControlled: true,
          constraints: BoxConstraints(
            maxHeight: double.infinity,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          context: context,
          builder: (context) {
            return Container(
              height: 560,
              decoration: BoxDecoration(
                color: black10Color,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Container(
                        height: 300,
                        width: 411,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromRGBO(0, 0, 0, 0.6),
                              Color.fromRGBO(0, 0, 0, 0),
                            ],
                          ),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                          ),
                          child: Image.asset(
                            imgUrl,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: 16,
                        ),
                        height: 4,
                        width: 40,
                        decoration: BoxDecoration(
                          color: greyColor,
                          borderRadius: BorderRadius.circular(
                            6,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 260,
                    color: whiteColor,
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.all(20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    menuName,
                                    style: w600blackTextStyle.copyWith(
                                      fontSize: 24,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        child: Row(
                                          children: List.generate(
                                            5,
                                            (index) {
                                              return Container(
                                                  margin: EdgeInsets.only(
                                                    right: 4,
                                                  ),
                                                  child: index < rating.ceil()
                                                      ? Icon(
                                                          Icons.star,
                                                          size: 20,
                                                          color: yellowColor,
                                                        )
                                                      : Icon(
                                                          Icons.star,
                                                          size: 20,
                                                          color: greyColor,
                                                        ));
                                            },
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Text(
                                        rating.toStringAsFixed(1),
                                        style: w500greyTextStyle.copyWith(
                                          fontSize: 16,
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 24,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'Rp',
                                        style: w600blackTextStyle.copyWith(
                                          fontSize: 24,
                                        ),
                                      ),
                                      Text(
                                        harga.toStringAsFixed(3),
                                        style: w600blackTextStyle.copyWith(
                                          fontSize: 24,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  SizedBox(
                                    height: 16,
                                  ),
                                  PlusMinus(),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            margin: EdgeInsets.symmetric(
                              horizontal: 20,
                            ),
                            height: 45,
                            decoration: BoxDecoration(
                              color: toscaColor,
                              borderRadius: BorderRadius.circular(
                                6,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'Place Order',
                                style: w500blackTextStyle.copyWith(
                                  fontSize: 16,
                                  color: whiteColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
      child: Container(
        width: 174,
        height: 248,
        margin: EdgeInsets.only(
          right: 16,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: whiteColor,
          boxShadow: [
            BoxShadow(
              offset: Offset(
                0,
                1,
              ),
              blurRadius: 10,
              color: Color.fromRGBO(0, 0, 0, 0.12),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 174,
              height: 160,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Image.asset(
                  imgUrl,
                  alignment: Alignment.center,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              height: 80,
              width: double.infinity,
              padding: EdgeInsets.only(
                left: 8,
                right: 8,
                bottom: 8,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(6),
                  bottomRight: Radius.circular(6),
                ),
                color: whiteColor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    menuName,
                    style: w500blackTextStyle.copyWith(
                      fontSize: 16,
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        size: 16,
                        color: yellowColor,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        rating.toStringAsFixed(1),
                        style: w500greyTextStyle.copyWith(
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Text(
                        'Rp',
                        style: w500blackTextStyle.copyWith(
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        harga.toStringAsFixed(3),
                        style: w500blackTextStyle.copyWith(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
