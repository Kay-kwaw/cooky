import 'package:cookify/auth/SignUpScreen.dart';
import 'package:cookify/auth/loginscreen.dart';
import 'package:cookify/auth/phoneAuth.dart';
import 'package:cookify/products/inventory.dart';
import 'package:cookify/products/inventorydetails.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const PhoneAuthWidget(),
    );
  }
}

