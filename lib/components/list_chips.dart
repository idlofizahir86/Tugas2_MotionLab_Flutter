import 'package:flutter/material.dart';
import 'package:idlofi_tugas2_flutter/theme.dart';

class ListChips extends StatelessWidget {
  const ListChips({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8),
      height: 30,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          SizedBox(
            width: 20,
          ),
          ListChipsItem(
            name: 'Dinner Food',
          ),
          ListChipsItem(
            name: 'Economic Food',
          ),
          ListChipsItem(
            name: 'Hot Food',
          ),
          ListChipsItem(
            name: 'Family Food',
          ),
          ListChipsItem(
            name: 'Super Food',
          ),
        ],
      ),
    );
  }
}

class ListChipsItem extends StatelessWidget {
  final String name;
  const ListChipsItem({
    Key? key,
    this.name = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8),
        margin: EdgeInsets.only(
          right: 16,
        ),
        height: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: grey3rdColor,
        ),
        child: Center(
          child: Text(
            name,
            textAlign: TextAlign.center,
            style: w400blackTextStyle.copyWith(
              fontSize: 14,
            ),
          ),
        ),
      ),
    );
  }
}
