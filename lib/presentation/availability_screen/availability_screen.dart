import 'controller/availability_controller.dart';import 'package:flutter/material.dart';import 'package:medtech/core/app_export.dart';import 'package:medtech/widgets/custom_elevated_button.dart';import 'package:medtech/widgets/custom_outlined_button.dart';import 'package:medtech/widgets/custom_switch.dart';class AvailabilityScreen extends GetWidget<AvailabilityController> {const AvailabilityScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: appTheme.whiteA700, body: SizedBox(width: double.maxFinite, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [CustomElevatedButton(height: getVerticalSize(83), text: "lbl_availability".tr, leftIcon: Container(margin: getMargin(right: 30), child: CustomImageView(svgPath: ImageConstant.imgArrowleftGray900)), buttonStyle: CustomButtonStyles.fillPrimaryContainer1, buttonTextStyle: theme.textTheme.headlineSmall!, onTap: () {onTapAvailability();}), Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 19, top: 16), child: Text("msg_configure_the_standard".tr, style: theme.textTheme.bodyLarge))), Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 19, top: 28), child: Row(children: [Text("lbl_sun".tr, style: theme.textTheme.titleMedium), Obx(() => CustomSwitch(margin: getMargin(left: 49), value: controller.isSelectedSwitch.value, onChange: (value) {controller.isSelectedSwitch.value = value;})), Padding(padding: getPadding(left: 10), child: Text("lbl_closed".tr, style: theme.textTheme.bodyMedium))]))), Padding(padding: getPadding(left: 20, top: 30, right: 20), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Padding(padding: getPadding(top: 4, bottom: 4), child: Text("lbl_mon".tr, style: theme.textTheme.titleMedium)), Obx(() => CustomSwitch(margin: getMargin(left: 45, top: 5, bottom: 5), value: controller.isSelectedSwitch1.value, onChange: (value) {controller.isSelectedSwitch1.value = value;})), Padding(padding: getPadding(left: 10, top: 7, bottom: 3), child: Text("lbl_open".tr, style: theme.textTheme.bodyMedium)), CustomOutlinedButton(height: getVerticalSize(28), width: getHorizontalSize(70), text: "lbl_9_00am2".tr, margin: getMargin(left: 39), rightIcon: Container(margin: getMargin(left: 4), child: CustomImageView(svgPath: ImageConstant.imgIconGray800)), buttonStyle: CustomButtonStyles.outlineBlueGrayTL4, buttonTextStyle: CustomTextStyles.bodySmallGray900_1), Padding(padding: getPadding(left: 16, top: 6, bottom: 6), child: Text("lbl_to".tr, style: CustomTextStyles.bodySmallGray900_1)), CustomOutlinedButton(height: getVerticalSize(28), width: getHorizontalSize(70), text: "lbl_6_00pm".tr, margin: getMargin(left: 16), rightIcon: Container(margin: getMargin(left: 5), child: CustomImageView(svgPath: ImageConstant.imgIconGray800)), buttonStyle: CustomButtonStyles.outlineBlueGrayTL4, buttonTextStyle: CustomTextStyles.bodySmallGray900_1)])), Padding(padding: getPadding(left: 19, top: 30, right: 22), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Padding(padding: getPadding(top: 4, bottom: 4), child: Text("lbl_tue".tr, style: theme.textTheme.titleMedium)), Spacer(), Obx(() => CustomSwitch(margin: getMargin(top: 5, bottom: 5), value: controller.isSelectedSwitch2.value, onChange: (value) {controller.isSelectedSwitch2.value = value;})), Padding(padding: getPadding(left: 10, top: 7, bottom: 3), child: Text("lbl_open".tr, style: theme.textTheme.bodyMedium)), CustomOutlinedButton(height: getVerticalSize(28), width: getHorizontalSize(70), text: "lbl_9_00am2".tr, margin: getMargin(left: 39), rightIcon: Container(margin: getMargin(left: 4), child: CustomImageView(svgPath: ImageConstant.imgIconGray800)), buttonStyle: CustomButtonStyles.outlineBlueGrayTL4, buttonTextStyle: CustomTextStyles.bodySmallGray900_1), Padding(padding: getPadding(left: 16, top: 6, bottom: 6), child: Text("lbl_to".tr, style: CustomTextStyles.bodySmallGray900_1)), CustomOutlinedButton(height: getVerticalSize(28), width: getHorizontalSize(69), text: "lbl_6_00pm".tr, margin: getMargin(left: 16), rightIcon: Container(margin: getMargin(left: 4), child: CustomImageView(svgPath: ImageConstant.imgIconGray800)), buttonStyle: CustomButtonStyles.outlineBlueGrayTL4, buttonTextStyle: CustomTextStyles.bodySmallGray900_1)])), Padding(padding: getPadding(left: 19, top: 30, right: 22), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Padding(padding: getPadding(top: 3, bottom: 5), child: Text("lbl_wed".tr, style: theme.textTheme.titleMedium)), Obx(() => CustomSwitch(margin: getMargin(left: 45, top: 5, bottom: 5), value: controller.isSelectedSwitch3.value, onChange: (value) {controller.isSelectedSwitch3.value = value;})), Padding(padding: getPadding(left: 10, top: 7, bottom: 3), child: Text("lbl_open".tr, style: theme.textTheme.bodyMedium)), CustomOutlinedButton(height: getVerticalSize(28), width: getHorizontalSize(70), text: "lbl_9_00am2".tr, margin: getMargin(left: 39), rightIcon: Container(margin: getMargin(left: 4), child: CustomImageView(svgPath: ImageConstant.imgIconGray800)), buttonStyle: CustomButtonStyles.outlineBlueGrayTL4, buttonTextStyle: CustomTextStyles.bodySmallGray900_1), Padding(padding: getPadding(left: 16, top: 6, bottom: 6), child: Text("lbl_to".tr, style: CustomTextStyles.bodySmallGray900_1)), CustomOutlinedButton(height: getVerticalSize(28), width: getHorizontalSize(69), text: "lbl_6_00pm".tr, margin: getMargin(left: 16), rightIcon: Container(margin: getMargin(left: 4), child: CustomImageView(svgPath: ImageConstant.imgIconGray800)), buttonStyle: CustomButtonStyles.outlineBlueGrayTL4, buttonTextStyle: CustomTextStyles.bodySmallGray900_1)])), Padding(padding: getPadding(left: 19, top: 30, right: 22), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Padding(padding: getPadding(top: 3, bottom: 5), child: Text("lbl_thurs".tr, style: theme.textTheme.titleMedium)), Obx(() => CustomSwitch(margin: getMargin(left: 34, top: 5, bottom: 5), value: controller.isSelectedSwitch4.value, onChange: (value) {controller.isSelectedSwitch4.value = value;})), Padding(padding: getPadding(left: 10, top: 7, bottom: 3), child: Text("lbl_open".tr, style: theme.textTheme.bodyMedium)), CustomOutlinedButton(height: getVerticalSize(28), width: getHorizontalSize(70), text: "lbl_9_00am2".tr, margin: getMargin(left: 39), rightIcon: Container(margin: getMargin(left: 4), child: CustomImageView(svgPath: ImageConstant.imgIconGray800)), buttonStyle: CustomButtonStyles.outlineBlueGrayTL4, buttonTextStyle: CustomTextStyles.bodySmallGray900_1), Padding(padding: getPadding(left: 16, top: 6, bottom: 6), child: Text("lbl_to".tr, style: CustomTextStyles.bodySmallGray900_1)), CustomOutlinedButton(height: getVerticalSize(28), width: getHorizontalSize(69), text: "lbl_6_00pm".tr, margin: getMargin(left: 16), rightIcon: Container(margin: getMargin(left: 4), child: CustomImageView(svgPath: ImageConstant.imgIconGray800)), buttonStyle: CustomButtonStyles.outlineBlueGrayTL4, buttonTextStyle: CustomTextStyles.bodySmallGray900_1)])), Padding(padding: getPadding(left: 19, top: 30, right: 22), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Padding(padding: getPadding(top: 3, bottom: 5), child: Text("lbl_fri".tr, style: theme.textTheme.titleMedium)), Spacer(), Obx(() => CustomSwitch(margin: getMargin(top: 5, bottom: 5), value: controller.isSelectedSwitch5.value, onChange: (value) {controller.isSelectedSwitch5.value = value;})), Padding(padding: getPadding(left: 10, top: 7, bottom: 3), child: Text("lbl_open".tr, style: theme.textTheme.bodyMedium)), CustomOutlinedButton(height: getVerticalSize(28), width: getHorizontalSize(70), text: "lbl_9_00am2".tr, margin: getMargin(left: 39), rightIcon: Container(margin: getMargin(left: 4), child: CustomImageView(svgPath: ImageConstant.imgIconGray800)), buttonStyle: CustomButtonStyles.outlineBlueGrayTL4, buttonTextStyle: CustomTextStyles.bodySmallGray900_1), Padding(padding: getPadding(left: 16, top: 6, bottom: 6), child: Text("lbl_to".tr, style: CustomTextStyles.bodySmallGray900_1)), CustomOutlinedButton(height: getVerticalSize(28), width: getHorizontalSize(69), text: "lbl_6_00pm".tr, margin: getMargin(left: 16), rightIcon: Container(margin: getMargin(left: 4), child: CustomImageView(svgPath: ImageConstant.imgIconGray800)), buttonStyle: CustomButtonStyles.outlineBlueGrayTL4, buttonTextStyle: CustomTextStyles.bodySmallGray900_1)])), Padding(padding: getPadding(left: 19, top: 30, right: 22, bottom: 5), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Padding(padding: getPadding(top: 4, bottom: 4), child: Text("lbl_sat".tr, style: theme.textTheme.titleMedium)), Spacer(), Obx(() => CustomSwitch(margin: getMargin(top: 5, bottom: 5), value: controller.isSelectedSwitch6.value, onChange: (value) {controller.isSelectedSwitch6.value = value;})), Padding(padding: getPadding(left: 10, top: 7, bottom: 3), child: Text("lbl_open".tr, style: theme.textTheme.bodyMedium)), CustomOutlinedButton(height: getVerticalSize(28), width: getHorizontalSize(70), text: "lbl_9_00am2".tr, margin: getMargin(left: 39), rightIcon: Container(margin: getMargin(left: 4), child: CustomImageView(svgPath: ImageConstant.imgIconGray800)), buttonStyle: CustomButtonStyles.outlineBlueGrayTL4, buttonTextStyle: CustomTextStyles.bodySmallGray900_1), Padding(padding: getPadding(left: 16, top: 6, bottom: 6), child: Text("lbl_to".tr, style: CustomTextStyles.bodySmallGray900_1)), CustomOutlinedButton(height: getVerticalSize(28), width: getHorizontalSize(69), text: "lbl_6_00pm".tr, margin: getMargin(left: 16), rightIcon: Container(margin: getMargin(left: 4), child: CustomImageView(svgPath: ImageConstant.imgIconGray800)), buttonStyle: CustomButtonStyles.outlineBlueGrayTL4, buttonTextStyle: CustomTextStyles.bodySmallGray900_1)]))])), bottomNavigationBar: CustomElevatedButton(text: "lbl_save".tr, margin: getMargin(left: 19, right: 19, bottom: 21)))); } 
/// Navigates to the accountSettingsOneScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the accountSettingsOneScreen.
onTapAvailability() { Get.toNamed(AppRoutes.accountSettingsOneScreen, ); } 
 }