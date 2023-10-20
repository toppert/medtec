import 'controller/cart_controller.dart';import 'package:flutter/material.dart';import 'package:medtech/core/app_export.dart';import 'package:medtech/widgets/app_bar/appbar_image.dart';import 'package:medtech/widgets/app_bar/appbar_title.dart';import 'package:medtech/widgets/app_bar/custom_app_bar.dart';import 'package:medtech/widgets/custom_elevated_button.dart';class CartScreen extends GetWidget<CartController> {const CartScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: appTheme.whiteA700, appBar: CustomAppBar(height: getVerticalSize(83), leadingWidth: getHorizontalSize(43), leading: AppbarImage(svgPath: ImageConstant.imgArrowleftGray900, margin: getMargin(left: 19, top: 40, bottom: 19), onTap: () {onTapArrowleftone();}), title: AppbarTitle(text: "lbl_cart".tr, margin: getMargin(left: 35, top: 37, bottom: 16)), styleType: Style.bgFill), body: SizedBox(width: mediaQueryData.size.width, child: SingleChildScrollView(padding: getPadding(top: 19), child: Padding(padding: getPadding(left: 19, bottom: 5), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Padding(padding: getPadding(right: 19), child: Row(children: [Padding(padding: getPadding(bottom: 2), child: Text("lbl_2_items_in_cart".tr, style: CustomTextStyles.titleMediumSemiBold_3)), Spacer(), CustomImageView(svgPath: ImageConstant.imgStatusskipped, height: getSize(20), width: getSize(20)), Padding(padding: getPadding(left: 2, top: 4), child: Text("msg_continue_shopping".tr, style: CustomTextStyles.bodyMediumBlueA400))])), Padding(padding: getPadding(top: 23, right: 19), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [CustomImageView(imagePath: ImageConstant.imgRectangle9315x428, height: getSize(100), width: getSize(100), radius: BorderRadius.circular(getHorizontalSize(5))), Padding(padding: getPadding(top: 2), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Text("msg_prostan_eye_drops".tr, style: theme.textTheme.titleMedium), Padding(padding: getPadding(top: 9), child: Text("lbl_2_600".tr, style: CustomTextStyles.titleSmallPrimary)), Padding(padding: getPadding(top: 18), child: Row(children: [Container(width: getHorizontalSize(98), padding: getPadding(left: 13, right: 13), decoration: AppDecoration.outlineGray3002.copyWith(borderRadius: BorderRadiusStyle.roundedBorder4), child: Row(children: [CustomImageView(svgPath: ImageConstant.imgAkariconsminus, height: getSize(13), width: getSize(13), margin: getMargin(top: 9, bottom: 9)), Padding(padding: getPadding(left: 10), child: SizedBox(height: getVerticalSize(31), child: VerticalDivider(width: getHorizontalSize(1), thickness: getVerticalSize(1), color: appTheme.gray300))), Padding(padding: getPadding(left: 9, top: 7, bottom: 7), child: Text("lbl_1".tr, style: CustomTextStyles.titleSmallSemiBold)), Padding(padding: getPadding(left: 10), child: SizedBox(height: getVerticalSize(32), child: VerticalDivider(width: getHorizontalSize(1), thickness: getVerticalSize(1), color: appTheme.gray300))), CustomImageView(svgPath: ImageConstant.imgAkariconsplusGray900, height: getSize(13), width: getSize(13), margin: getMargin(left: 9, top: 9, bottom: 9))])), CustomImageView(svgPath: ImageConstant.imgFloatingicon, height: getSize(32), width: getSize(32))]))]))])), Padding(padding: getPadding(top: 15), child: Divider(color: appTheme.gray300, endIndent: getHorizontalSize(19))), Padding(padding: getPadding(top: 14, right: 19), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [CustomImageView(imagePath: ImageConstant.imgRectangle9100x100, height: getSize(100), width: getSize(100)), Padding(padding: getPadding(top: 2), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Text("msg_penicillin_300mg".tr, style: theme.textTheme.titleMedium), Padding(padding: getPadding(top: 9), child: Text("lbl_5_200".tr, style: CustomTextStyles.titleSmallPrimary)), Padding(padding: getPadding(top: 18), child: Row(children: [Container(width: getHorizontalSize(98), padding: getPadding(left: 13, right: 13), decoration: AppDecoration.outlineGray3002.copyWith(borderRadius: BorderRadiusStyle.roundedBorder4), child: Row(children: [CustomImageView(svgPath: ImageConstant.imgAkariconsminus, height: getSize(13), width: getSize(13), margin: getMargin(top: 9, bottom: 9)), Padding(padding: getPadding(left: 10), child: SizedBox(height: getVerticalSize(31), child: VerticalDivider(width: getHorizontalSize(1), thickness: getVerticalSize(1), color: appTheme.gray300))), Padding(padding: getPadding(left: 9, top: 7, bottom: 7), child: Text("lbl_1".tr, style: CustomTextStyles.titleSmallSemiBold)), Padding(padding: getPadding(left: 10), child: SizedBox(height: getVerticalSize(32), child: VerticalDivider(width: getHorizontalSize(1), thickness: getVerticalSize(1), color: appTheme.gray300))), CustomImageView(svgPath: ImageConstant.imgAkariconsplusGray900, height: getSize(13), width: getSize(13), margin: getMargin(left: 9, top: 9, bottom: 9))])), CustomImageView(svgPath: ImageConstant.imgFloatingicon, height: getSize(32), width: getSize(32))]))]))])), Padding(padding: getPadding(top: 29, right: 19), child: Row(children: [Text("msg_related_products".tr, style: theme.textTheme.bodyMedium), Padding(padding: getPadding(top: 8, bottom: 7), child: SizedBox(width: getHorizontalSize(272), child: Divider(indent: getHorizontalSize(9))))])), SingleChildScrollView(scrollDirection: Axis.horizontal, padding: getPadding(top: 19), child: IntrinsicWidth(child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Container(padding: getPadding(left: 13, top: 8, right: 13, bottom: 8), decoration: AppDecoration.outlineIndigo.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [Container(height: getVerticalSize(110), width: getHorizontalSize(133), margin: getMargin(top: 1), child: Stack(alignment: Alignment.topLeft, children: [CustomImageView(imagePath: ImageConstant.imgRectangle9, height: getVerticalSize(110), width: getHorizontalSize(133), alignment: Alignment.center), Align(alignment: Alignment.topLeft, child: Container(padding: getPadding(left: 3, top: 1, right: 3, bottom: 1), decoration: AppDecoration.fillBlueA, child: Text("lbl_152".tr, style: theme.textTheme.labelSmall)))])), Container(width: getHorizontalSize(95), margin: getMargin(top: 10), child: RichText(text: TextSpan(children: [TextSpan(text: "msg_amatem_softgel_2_5ml2".tr, style: CustomTextStyles.labelLargeGray900_2), TextSpan(text: " "), TextSpan(text: "lbl_4_5_23".tr, style: CustomTextStyles.bodySmallBlueA400)]), textAlign: TextAlign.left)), Padding(padding: getPadding(top: 12), child: Row(children: [Text("lbl_3_000".tr, style: theme.textTheme.labelLarge!.copyWith(decoration: TextDecoration.lineThrough)), Padding(padding: getPadding(left: 10), child: Text("lbl_2_600".tr, style: theme.textTheme.labelLarge))]))])), Container(margin: getMargin(left: 10), padding: getPadding(left: 13, top: 8, right: 13, bottom: 8), decoration: AppDecoration.outlineIndigo.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgRectangle9155x155, height: getVerticalSize(110), width: getHorizontalSize(133), margin: getMargin(top: 1)), Container(width: getHorizontalSize(93), margin: getMargin(top: 12), child: RichText(text: TextSpan(children: [TextSpan(text: "msg_emzoron_tonic_100mg3".tr, style: CustomTextStyles.labelLargeGray900_2), TextSpan(text: "lbl_4_5_23".tr, style: CustomTextStyles.bodySmallBlueA400)]), textAlign: TextAlign.left)), Padding(padding: getPadding(top: 14), child: Text("lbl_2_160".tr, style: theme.textTheme.labelLarge))])), Container(margin: getMargin(left: 10), padding: getPadding(left: 13, top: 8, right: 13, bottom: 8), decoration: AppDecoration.outlineIndigo.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgRectangle9155x155, height: getVerticalSize(110), width: getHorizontalSize(133), margin: getMargin(top: 1)), Container(width: getHorizontalSize(114), margin: getMargin(top: 12), child: RichText(text: TextSpan(children: [TextSpan(text: "msg_emzoron_tonic_100mg3".tr, style: CustomTextStyles.labelLargeGray900_2), TextSpan(text: "lbl_4_5_23".tr, style: CustomTextStyles.bodySmallBlueA400)]), textAlign: TextAlign.left)), Padding(padding: getPadding(top: 14), child: Text("lbl_2_160".tr, style: theme.textTheme.labelLarge))]))]))), Padding(padding: getPadding(top: 29, right: 18), child: Row(children: [Text("lbl_recommended".tr, style: theme.textTheme.bodyMedium), Expanded(child: Padding(padding: getPadding(top: 8, bottom: 7), child: Divider(indent: getHorizontalSize(9))))])), SingleChildScrollView(scrollDirection: Axis.horizontal, padding: getPadding(top: 19), child: IntrinsicWidth(child: SizedBox(height: getVerticalSize(208), width: getHorizontalSize(497), child: Stack(alignment: Alignment.center, children: [Align(alignment: Alignment.centerLeft, child: Container(padding: getPadding(left: 13, top: 8, right: 13, bottom: 8), decoration: AppDecoration.outlineIndigo.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [Container(height: getVerticalSize(110), width: getHorizontalSize(133), margin: getMargin(top: 1), child: Stack(alignment: Alignment.topLeft, children: [CustomImageView(imagePath: ImageConstant.imgRectangle9, height: getVerticalSize(110), width: getHorizontalSize(133), alignment: Alignment.center), Align(alignment: Alignment.topLeft, child: Container(padding: getPadding(left: 3, top: 1, right: 3, bottom: 1), decoration: AppDecoration.fillBlueA, child: Text("lbl_152".tr, style: theme.textTheme.labelSmall)))])), Container(width: getHorizontalSize(95), margin: getMargin(top: 10), child: RichText(text: TextSpan(children: [TextSpan(text: "msg_amatem_softgel_2_5ml2".tr, style: CustomTextStyles.labelLargeGray900_2), TextSpan(text: " "), TextSpan(text: "lbl_4_5_23".tr, style: CustomTextStyles.bodySmallBlueA400)]), textAlign: TextAlign.left)), Padding(padding: getPadding(top: 12), child: Row(children: [Text("lbl_3_000".tr, style: theme.textTheme.labelLarge!.copyWith(decoration: TextDecoration.lineThrough)), Padding(padding: getPadding(left: 10), child: Text("lbl_2_600".tr, style: theme.textTheme.labelLarge))]))]))), Align(alignment: Alignment.center, child: Container(margin: getMargin(left: 169, right: 169), padding: getPadding(left: 13, top: 8, right: 13, bottom: 8), decoration: AppDecoration.outlineIndigo.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgRectangle9155x155, height: getVerticalSize(110), width: getHorizontalSize(133), margin: getMargin(top: 1)), Container(width: getHorizontalSize(93), margin: getMargin(top: 12, right: 39), child: RichText(text: TextSpan(children: [TextSpan(text: "msg_emzoron_tonic_100mg3".tr, style: CustomTextStyles.labelLargeGray900_2), TextSpan(text: "lbl_4_5_23".tr, style: CustomTextStyles.bodySmallBlueA400)]), textAlign: TextAlign.left)), Padding(padding: getPadding(top: 14), child: Text("lbl_2_160".tr, style: theme.textTheme.labelLarge))]))), CustomElevatedButton(height: getVerticalSize(52), width: getHorizontalSize(390), text: "msg_checkout_7_800".tr, margin: getMargin(bottom: 60), onTap: () {onTapCheckout7800();}, alignment: Alignment.bottomLeft), Align(alignment: Alignment.centerRight, child: Container(padding: getPadding(left: 13, top: 8, right: 13, bottom: 8), decoration: AppDecoration.outlineIndigo.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgRectangle9155x155, height: getVerticalSize(110), width: getHorizontalSize(133), margin: getMargin(top: 1)), Container(width: getHorizontalSize(114), margin: getMargin(top: 12), child: RichText(text: TextSpan(children: [TextSpan(text: "msg_emzoron_tonic_100mg3".tr, style: CustomTextStyles.labelLargeGray900_2), TextSpan(text: "lbl_4_5_23".tr, style: CustomTextStyles.bodySmallBlueA400)]), textAlign: TextAlign.left)), Padding(padding: getPadding(top: 14), child: Text("lbl_2_600".tr, style: theme.textTheme.labelLarge))])))]))))])))))); } 


/// Navigates to the previous screen.
///
/// When the action is triggered, this function uses the [Get] package to 
/// navigate to the previous screen in the navigation stack.
onTapArrowleftone() { Get.back(); } 
/// Navigates to the checkoutScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the checkoutScreen.
onTapCheckout7800() { Get.toNamed(AppRoutes.checkoutScreen, ); } 
 }
