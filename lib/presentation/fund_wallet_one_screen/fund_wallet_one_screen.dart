import 'controller/fund_wallet_one_controller.dart';import 'package:flutter/material.dart';import 'package:medtech/core/app_export.dart';import 'package:medtech/widgets/app_bar/appbar_image.dart';import 'package:medtech/widgets/app_bar/appbar_title.dart';import 'package:medtech/widgets/app_bar/custom_app_bar.dart';import 'package:medtech/widgets/custom_elevated_button.dart';class FundWalletOneScreen extends GetWidget<FundWalletOneController> {const FundWalletOneScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: appTheme.whiteA700, appBar: CustomAppBar(height: getVerticalSize(83), leadingWidth: getHorizontalSize(43), leading: AppbarImage(svgPath: ImageConstant.imgArrowleftGray900, margin: getMargin(left: 19, top: 40, bottom: 19), onTap: () {onTapArrowleftone();}), title: AppbarTitle(text: "lbl_fund_wallet".tr, margin: getMargin(left: 35)), styleType: Style.bgFill), body: Container(width: double.maxFinite, padding: getPadding(left: 18, top: 17, right: 18, bottom: 17), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Text("msg_select_card_to_fund".tr, style: theme.textTheme.bodyLarge), Padding(padding: getPadding(top: 32), child: Row(children: [Container(margin: getMargin(top: 6, bottom: 6), padding: getPadding(all: 6), decoration: AppDecoration.outlinePrimary.copyWith(borderRadius: BorderRadiusStyle.circleBorder12), child: Container(height: getSize(10), width: getSize(10), decoration: BoxDecoration(color: theme.colorScheme.primary, borderRadius: BorderRadius.circular(getHorizontalSize(5))))), Container(height: getVerticalSize(19), width: getHorizontalSize(32), decoration: AppDecoration.white.copyWith(borderRadius: BorderRadiusStyle.roundedBorder4), child: CustomImageView(svgPath: ImageConstant.imgVolumeYellow800, height: getVerticalSize(19), width: getHorizontalSize(32), radius: BorderRadius.circular(getHorizontalSize(4)), alignment: Alignment.center)), Padding(padding: getPadding(left: 16), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Text("msg_4256".tr, style: theme.textTheme.titleSmall), Padding(padding: getPadding(top: 5), child: Text("lbl_expires_02_24".tr, style: CustomTextStyles.labelLargeBluegray500))])), Spacer(), CustomImageView(svgPath: ImageConstant.imgEpdelete, height: getSize(24), width: getSize(24), margin: getMargin(top: 7, bottom: 6))])), Padding(padding: getPadding(top: 27), child: Row(children: [CustomImageView(svgPath: ImageConstant.imgContrast, height: getSize(24), width: getSize(24), margin: getMargin(top: 7, bottom: 6)), CustomImageView(imagePath: ImageConstant.imgVector, height: getVerticalSize(16), width: getHorizontalSize(52), margin: getMargin(left: 16, top: 10, bottom: 10)), Padding(padding: getPadding(left: 16), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Text("msg_1254".tr, style: theme.textTheme.titleSmall), Padding(padding: getPadding(top: 5), child: Text("lbl_expires_01_25".tr, style: CustomTextStyles.labelLargeBluegray500))])), Spacer(), CustomImageView(svgPath: ImageConstant.imgEpdelete, height: getSize(24), width: getSize(24), margin: getMargin(top: 7, bottom: 6))])), Padding(padding: getPadding(top: 31), child: Divider()), CustomElevatedButton(height: getVerticalSize(24), width: getHorizontalSize(101), text: "lbl_add_card".tr, margin: getMargin(top: 29, bottom: 5), leftIcon: Container(margin: getMargin(right: 4), child: CustomImageView(svgPath: ImageConstant.imgPlus)), buttonStyle: CustomButtonStyles.none, buttonTextStyle: CustomTextStyles.titleMediumPrimarySemiBold, onTap: () {onTapAddcard();})])), bottomNavigationBar: CustomElevatedButton(text: "lbl_fund".tr, margin: getMargin(left: 19, right: 19, bottom: 30), onTap: () {onTapFund();}))); } 


/// Navigates to the previous screen.
///
/// When the action is triggered, this function uses the [Get] package to 
/// navigate to the previous screen in the navigation stack.
onTapArrowleftone() { Get.back(); } 
/// Navigates to the walletScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the walletScreen.
onTapFund() { Get.toNamed(AppRoutes.walletScreen, ); } 
/// Navigates to the addCardScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the addCardScreen.
onTapAddcard() { Get.toNamed(AppRoutes.addCardScreen, ); } 
 }