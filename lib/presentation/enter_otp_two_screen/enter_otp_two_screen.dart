import 'controller/enter_otp_two_controller.dart';import 'package:flutter/material.dart';import 'package:medtech/core/app_export.dart';import 'package:medtech/widgets/app_bar/appbar_image.dart';import 'package:medtech/widgets/app_bar/appbar_subtitle.dart';import 'package:medtech/widgets/app_bar/custom_app_bar.dart';import 'package:medtech/widgets/custom_elevated_button.dart';import 'package:medtech/widgets/custom_icon_button.dart';class EnterOtpTwoScreen extends GetWidget<EnterOtpTwoController> {const EnterOtpTwoScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: appTheme.whiteA700, appBar: CustomAppBar(leadingWidth: getHorizontalSize(43), leading: AppbarImage(svgPath: ImageConstant.imgArrowleft, margin: getMargin(left: 19, top: 15, bottom: 16), onTap: () {onTapArrowleftone();}), centerTitle: true, title: AppbarSubtitle(text: "lbl_enter_otp".tr)), body: Container(width: double.maxFinite, padding: getPadding(left: 17, top: 16, right: 17, bottom: 16), child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Container(width: getHorizontalSize(373), margin: getMargin(left: 2, right: 18), child: Text("msg_enter_the_authentication".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.bodyLarge!.copyWith(height: 1.25)))), Padding(padding: getPadding(left: 2, top: 52, right: 8), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Container(padding: getPadding(left: 16, top: 12, right: 16, bottom: 12), decoration: AppDecoration.outlineGreen.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Text("lbl_4".tr, style: CustomTextStyles.titleMediumSemiBold_3)), Container(padding: getPadding(left: 17, top: 12, right: 17, bottom: 12), decoration: AppDecoration.outlineGreen.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Text("lbl_3".tr, style: CustomTextStyles.titleMediumSemiBold_3)), Container(padding: getPadding(left: 17, top: 12, right: 17, bottom: 12), decoration: AppDecoration.outlineGreen.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Text("lbl_3".tr, style: CustomTextStyles.titleMediumSemiBold_3)), Container(padding: getPadding(left: 17, top: 12, right: 17, bottom: 12), decoration: AppDecoration.outlineGreen.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Text("lbl_2".tr, style: CustomTextStyles.titleMediumSemiBold_3)), Container(padding: getPadding(left: 16, top: 12, right: 16, bottom: 12), decoration: AppDecoration.outlineGreen.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Text("lbl_0".tr, style: CustomTextStyles.titleMediumSemiBold_3)), Container(padding: getPadding(left: 18, top: 12, right: 18, bottom: 12), decoration: AppDecoration.outlineGreen.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Text("lbl_1".tr, style: CustomTextStyles.titleMediumSemiBold_3)), CustomIconButton(height: getSize(24), width: getSize(24), margin: getMargin(top: 10, bottom: 10), padding: getPadding(all: 2), child: CustomImageView(svgPath: ImageConstant.imgCheckmarkTeal400))])), CustomElevatedButton(text: "lbl_verify".tr, margin: getMargin(top: 90)), Padding(padding: getPadding(top: 20), child: RichText(text: TextSpan(children: [TextSpan(text: "msg_didn_t_get_the_code2".tr, style: theme.textTheme.bodyMedium), TextSpan(text: "lbl_resend".tr, style: CustomTextStyles.titleSmallPrimary_1)]), textAlign: TextAlign.left)), Padding(padding: getPadding(top: 18, bottom: 5), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(svgPath: ImageConstant.imgArrowleftGray900, height: getSize(20), width: getSize(20)), Padding(padding: getPadding(left: 10, top: 3), child: Text("lbl_back_to_sign_in".tr, style: CustomTextStyles.bodySmallGray900_1))]))])))); } 


/// Navigates to the previous screen.
///
/// When the action is triggered, this function uses the [Get] package to 
/// navigate to the previous screen in the navigation stack.
onTapArrowleftone() { Get.back(); } 
 }
