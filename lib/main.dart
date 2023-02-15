import 'package:ecommercetask6/binding/controller_binding.dart';
import 'package:ecommercetask6/view/splash.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: '90sShop',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      initialBinding: ControllerBinding(),
      home: const SplashScreen(),
    );
  }
}
