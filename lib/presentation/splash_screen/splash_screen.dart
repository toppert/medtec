import 'controller/splash_controller.dart';import 'package:flutter/material.dart';import 'package:medtech/core/app_export.dart';class SplashScreen extends GetWidget<SplashController> {const SplashScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: theme.colorScheme.primaryContainer.withOpacity(1), body: SizedBox(height: mediaQueryData.size.height, width: double.maxFinite, child: Stack(alignment: Alignment.topCenter, children: [CustomImageView(imagePath: ImageConstant.imgImage7, height: getVerticalSize(121), width: getHorizontalSize(179), alignment: Alignment.center), CustomImageView(imagePath: ImageConstant.imgGroup2, height: getVerticalSize(518), width: getHorizontalSize(428), alignment: Alignment.topCenter)])))); } 
 }
