import 'package:flutter/material.dart';
import 'package:test1/Home%20Screen/homeScreen.dart';
import 'package:test1/Home%20Screen/product_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
     routes: {
        '/' : (context) => homeScreen(),
        'productScreen' : (context) => productScreen(),
     },
    ),
  );
}
