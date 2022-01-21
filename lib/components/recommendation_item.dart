import 'package:flutter/material.dart';
import 'package:idlofi_tugas2_flutter/theme.dart';

class RecommendationItem extends StatelessWidget {
  final String imgUrl;
  final double rating;
  final String recomName;
  final String keterangan;
  final double harga;
  const RecommendationItem({
    Key? key,
    this.imgUrl = '',
    this.rating = 0,
    this.recomName = '',
    this.keterangan = '',
    this.harga = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 262,
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
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Stack(
                alignment: Alignment.topRight,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(6),
                      topRight: Radius.circular(6),
                    ),
                    child: Image.asset(
                      imgUrl,
                      alignment: Alignment.topCenter,
                      width: 160,
                      height: 262,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 11,
                    ),
                    width: 60,
                    height: 24,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(0, 0, 0, 0.71),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(6),
                          bottomLeft: Radius.circular(6),
                        )),
                    child: Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: yellowColor,
                          size: 16,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          rating.toStringAsFixed(1),
                          style: w400blackTextStyle.copyWith(
                            fontSize: 12,
                            color: whiteColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                height: 66,
                width: double.infinity,
                padding: EdgeInsets.only(
                  top: 8,
                  left: 8,
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
                      recomName,
                      style: w500blackTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      keterangan,
                      style: w400greyTextStyle.copyWith(
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Row(
                      children: [
                        Text(
                          'Rp',
                          style: w400blackTextStyle.copyWith(
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          harga.toStringAsFixed(3),
                          style: w400blackTextStyle.copyWith(
                            fontSize: 14,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
