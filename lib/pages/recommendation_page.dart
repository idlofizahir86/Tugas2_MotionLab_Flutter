import 'package:flutter/material.dart';
import 'package:idlofi_tugas2_flutter/components/recommendation_item.dart';
import 'package:idlofi_tugas2_flutter/theme.dart';

class RecommendationPage extends StatelessWidget {
  const RecommendationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 20,
              ),
              Text(
                'Recommendation',
                style: w600blackTextStyle.copyWith(
                  fontSize: 20,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            height: 262,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(
                  width: 20,
                ),
                RecommendationItem(
                  imgUrl:
                      'assets/home_page/recommendations/recommendation_1.png',
                  recomName: 'Family Package',
                  keterangan: '1 large table 1 chair',
                  harga: 320.000,
                  rating: 4.7,
                ),
                RecommendationItem(
                  imgUrl:
                      'assets/home_page/recommendations/recommendation_2.png',
                  recomName: 'Single Breakfast',
                  keterangan: '1 table 1 chair',
                  harga: 70.000,
                  rating: 4.8,
                ),
                RecommendationItem(
                  imgUrl:
                      'assets/home_page/recommendations/recommendation_3.png',
                  recomName: 'Date Package',
                  keterangan: '1 table 2 chair',
                  harga: 135.000,
                  rating: 4.9,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
