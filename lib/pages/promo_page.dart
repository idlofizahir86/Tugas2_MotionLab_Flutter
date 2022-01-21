import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:idlofi_tugas2_flutter/components/promo_item.dart';
import 'package:idlofi_tugas2_flutter/theme.dart';

class PromoPage extends StatefulWidget {
  const PromoPage({Key? key}) : super(key: key);

  @override
  State<PromoPage> createState() => _PromoPageState();
}

class _PromoPageState extends State<PromoPage> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  final List<Widget> promoCard = [
    PromoItem(
      imgUrl: 'assets/home_page/slider_promo/promo 1.png',
    ),
    PromoItem(
      imgUrl: "assets/home_page/slider_promo/promo 2.png",
    ),
    PromoItem(
      imgUrl: 'assets/home_page/slider_promo/promo 3.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            child: CarouselSlider(
              items: promoCard,
              carouselController: _controller,
              options: CarouselOptions(
                height: 160,
                enableInfiniteScroll: false,
                autoPlay: false,
                enlargeCenterPage: true,
                aspectRatio: 2.0,
                onPageChanged: (index, reason) {
                  setState(
                    () {
                      _current = index;
                    },
                  );
                },
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: promoCard.asMap().entries.map((entry) {
              return GestureDetector(
                onTap: () => _controller.animateToPage(entry.key),
                child: Container(
                  width: 8.0,
                  height: 8.0,
                  margin: EdgeInsets.only(
                    left: 4,
                    right: 4,
                  ),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _current == entry.key ? toscaColor : greyColor,
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
