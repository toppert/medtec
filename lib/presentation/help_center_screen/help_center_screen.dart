import 'controller/help_center_controller.dart';import 'package:flutter/material.dart';import 'package:medtech/core/app_export.dart';import 'package:medtech/widgets/app_bar/appbar_image_1.dart';import 'package:medtech/widgets/app_bar/custom_app_bar.dart';import 'package:medtech/widgets/custom_icon_button.dart';import 'package:medtech/widgets/custom_search_view.dart';import 'package:medtech/widgets/custom_text_form_field.dart';class HelpCenterScreen extends GetWidget<HelpCenterController> {const HelpCenterScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, backgroundColor: appTheme.whiteA700, body: SizedBox(width: double.maxFinite, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [SizedBox(height: getVerticalSize(283), width: double.maxFinite, child: Stack(alignment: Alignment.bottomCenter, children: [Align(alignment: Alignment.topCenter, child: Container(padding: getPadding(top: 24, bottom: 24), decoration: AppDecoration.fillPrimary1, child: CustomAppBar(height: getVerticalSize(24), actions: [AppbarImage1(svgPath: ImageConstant.imgEvacloseoutline, margin: getMargin(left: 20, right: 20), onTap: () {onTapEvacloseoutline();})]))), Align(alignment: Alignment.bottomCenter, child: GestureDetector(onTap: () {onTapColumnteenyicon();}, child: Container(margin: getMargin(left: 20, right: 20), padding: getPadding(all: 15), decoration: AppDecoration.outlineGray300.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Row(children: [CustomIconButton(height: getSize(30), width: getSize(30), padding: getPadding(all: 7), decoration: IconButtonStyleHelper.fillBlueATL15, child: CustomImageView(svgPath: ImageConstant.imgTeenyiconssendsolid)), Padding(padding: getPadding(left: 15, top: 7, bottom: 3), child: Text("msg_contact_our_support".tr, style: CustomTextStyles.titleMediumSemiBold_3))]), Container(width: getHorizontalSize(352), margin: getMargin(top: 11, right: 5), child: Text("msg_is_there_an_issue".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.bodyMedium!.copyWith(height: 1.50)))])))), CustomImageView(imagePath: ImageConstant.imgGenescorlogor75x80, height: getVerticalSize(75), width: getHorizontalSize(80), alignment: Alignment.topLeft, margin: getMargin(top: 10)), Align(alignment: Alignment.topLeft, child: Container(width: getHorizontalSize(225), margin: getMargin(left: 20, top: 82), child: RichText(text: TextSpan(children: [TextSpan(text: "lbl_hello_ejiro".tr, style: CustomTextStyles.headlineLargeBold), TextSpan(text: "msg_how_can_we_help".tr, style: CustomTextStyles.titleMediumPrimaryContainer_2)]), textAlign: TextAlign.left)))])), Container(padding: getPadding(left: 20, top: 15, right: 20, bottom: 15), child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Container(padding: getPadding(left: 15, top: 18, right: 15, bottom: 18), decoration: AppDecoration.outlineGray300.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.center, children: [CustomTextFormField(controller: controller.faqsvalueoneController, hintText: "lbl_faqs".tr, hintStyle: CustomTextStyles.titleMediumSemiBold_3, borderDecoration: TextFormFieldStyleHelper.underLineGray, filled: false), CustomSearchView(margin: getMargin(top: 14), controller: controller.searchController, hintText: "lbl_search_for_help".tr, hintStyle: CustomTextStyles.bodyMediumOnInverseSurface, suffix: Container(margin: getMargin(left: 30, top: 15, right: 16, bottom: 15), child: CustomImageView(svgPath: ImageConstant.imgSearchBlueA400)), suffixConstraints: BoxConstraints(maxHeight: getVerticalSize(50))), Padding(padding: getPadding(left: 14, top: 15, right: 14), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: getPadding(top: 2, bottom: 4), child: Text("lbl_about_genescor".tr, style: theme.textTheme.bodyMedium)), CustomIconButton(height: getSize(24), width: getSize(24), padding: getPadding(all: 4), child: CustomImageView(svgPath: ImageConstant.imgArrowright))])), Padding(padding: getPadding(left: 14, top: 10, right: 14), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: getPadding(top: 4, bottom: 2), child: Text("lbl_getting_started".tr, style: theme.textTheme.bodyMedium)), CustomIconButton(height: getSize(24), width: getSize(24), padding: getPadding(all: 4), child: CustomImageView(svgPath: ImageConstant.imgArrowright))])), Padding(padding: getPadding(left: 14, top: 10, right: 14), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: getPadding(top: 4, bottom: 2), child: Text("lbl_appointments".tr, style: theme.textTheme.bodyMedium)), CustomIconButton(height: getSize(24), width: getSize(24), padding: getPadding(all: 4), child: CustomImageView(svgPath: ImageConstant.imgArrowright))])), Padding(padding: getPadding(top: 15), child: Text("lbl_show_more".tr, style: CustomTextStyles.titleMediumPrimarySemiBold))])), Container(margin: getMargin(top: 15, bottom: 5), padding: getPadding(left: 15, top: 23, right: 15, bottom: 23), decoration: AppDecoration.outlineGray300.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [CustomTextFormField(controller: controller.contactusoneController, margin: getMargin(left: 5), hintText: "lbl_contact_us".tr, hintStyle: CustomTextStyles.titleMediumSemiBold_3, textInputAction: TextInputAction.done, borderDecoration: TextFormFieldStyleHelper.underLineGray, filled: false), Padding(padding: getPadding(left: 5, top: 19), child: Row(children: [CustomIconButton(height: getSize(30), width: getSize(30), padding: getPadding(all: 5), decoration: IconButtonStyleHelper.fillBlueATL151, child: CustomImageView(svgPath: ImageConstant.imgCarbonphone)), Padding(padding: getPadding(left: 8, top: 6, bottom: 6), child: Text("lbl_2348333287622".tr, style: theme.textTheme.bodyMedium))])), Padding(padding: getPadding(left: 5, top: 15), child: Row(children: [CustomIconButton(height: getSize(30), width: getSize(30), padding: getPadding(all: 5), decoration: IconButtonStyleHelper.fillBlueATL151, child: CustomImageView(svgPath: ImageConstant.imgClarityemailline)), Padding(padding: getPadding(left: 8, top: 8, bottom: 4), child: Text("msg_support_genescor_com".tr, style: theme.textTheme.bodyMedium))]))]))]))])))); } 
/// Navigates to the dashboardScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the dashboardScreen.
onTapEvacloseoutline() { Get.toNamed(AppRoutes.dashboardScreen, ); } 
/// Navigates to the messageScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the messageScreen.
onTapColumnteenyicon() { Get.toNamed(AppRoutes.messageScreen, ); } 
 }
