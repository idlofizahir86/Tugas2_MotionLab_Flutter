import 'package:flutter/material.dart';

import 'package:idlofi_tugas2_flutter/pages/food_page.dart';
import 'package:idlofi_tugas2_flutter/pages/home_page.dart';
import 'package:idlofi_tugas2_flutter/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: whiteColor,
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/food': (context) => const FoodPage(),
      },
    );
  }
}
