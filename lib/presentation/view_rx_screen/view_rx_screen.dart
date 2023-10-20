import 'controller/view_rx_controller.dart';import 'package:flutter/material.dart';import 'package:medtech/core/app_export.dart';import 'package:medtech/widgets/custom_elevated_button.dart';class ViewRxScreen extends GetWidget<ViewRxController> {const ViewRxScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: appTheme.whiteA700, body: SizedBox(width: double.maxFinite, child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [CustomElevatedButton(height: getVerticalSize(83), text: "msg_view_prescription".tr, leftIcon: Container(margin: getMargin(right: 30), child: CustomImageView(svgPath: ImageConstant.imgArrowleftGray900)), buttonStyle: CustomButtonStyles.fillPrimaryContainer1, buttonTextStyle: theme.textTheme.headlineSmall!, onTap: () {onTapView();}), Align(alignment: Alignment.center, child: Container(margin: getMargin(left: 19, top: 15, right: 19), padding: getPadding(left: 90, top: 10, right: 90, bottom: 10), decoration: AppDecoration.fillBlueA.copyWith(borderRadius: BorderRadiusStyle.customBorderTL10), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.center, children: [Text("msg_dr_rashida_mohammed".tr, style: CustomTextStyles.titleMediumPrimaryContainerBold18), Padding(padding: getPadding(top: 7), child: Text("lbl_haematologist".tr, style: CustomTextStyles.titleMediumPrimaryContainer_1))]))), Padding(padding: getPadding(left: 19, top: 24), child: RichText(text: TextSpan(children: [TextSpan(text: "lbl_date".tr, style: CustomTextStyles.titleMediumBluegray500_1), TextSpan(text: "lbl_12_10_2022".tr, style: theme.textTheme.titleMedium)]), textAlign: TextAlign.left)), Padding(padding: getPadding(left: 19, top: 11), child: RichText(text: TextSpan(children: [TextSpan(text: "lbl_name2".tr, style: CustomTextStyles.titleMediumBluegray500_1), TextSpan(text: "lbl_stella_adebayo2".tr, style: theme.textTheme.titleMedium)]), textAlign: TextAlign.left)), Padding(padding: getPadding(left: 19, top: 10), child: RichText(text: TextSpan(children: [TextSpan(text: "lbl_age".tr, style: CustomTextStyles.titleMediumBluegray500_1), TextSpan(text: "lbl_302".tr, style: theme.textTheme.titleMedium)]), textAlign: TextAlign.left)), Padding(padding: getPadding(left: 19, top: 7), child: RichText(text: TextSpan(children: [TextSpan(text: "lbl_sex".tr, style: CustomTextStyles.titleMediumBluegray500_1), TextSpan(text: "lbl_female2".tr, style: theme.textTheme.titleMedium)]), textAlign: TextAlign.left)), CustomImageView(svgPath: ImageConstant.imgVolumeGray900, height: getVerticalSize(75), width: getHorizontalSize(93), margin: getMargin(left: 22, top: 36)), Align(alignment: Alignment.center, child: Container(margin: getMargin(left: 22, top: 36, right: 19, bottom: 5), padding: getPadding(left: 20, top: 15, right: 20, bottom: 15), decoration: AppDecoration.fillGray10001.copyWith(borderRadius: BorderRadiusStyle.roundedBorder4), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("lbl_medicine".tr, style: theme.textTheme.titleMedium), Text("lbl_dose".tr, style: theme.textTheme.titleMedium), Text("lbl_duration".tr, style: theme.textTheme.titleMedium)]), Padding(padding: getPadding(top: 14, right: 15), child: Row(children: [SizedBox(width: getHorizontalSize(92), child: RichText(text: TextSpan(children: [TextSpan(text: "lbl_panadol3".tr, style: theme.textTheme.bodyLarge), TextSpan(text: "lbl_tablet_10mg2".tr, style: CustomTextStyles.bodyMediumBluegray500_2)]), textAlign: TextAlign.left)), Spacer(flex: 43), Padding(padding: getPadding(top: 14, bottom: 12), child: Text("lbl_2_2_2".tr, style: CustomTextStyles.bodyMediumBluegray90001)), Spacer(flex: 56), Padding(padding: getPadding(top: 14, bottom: 12), child: Text("lbl_10_days".tr, style: CustomTextStyles.bodyMedium_1))])), Padding(padding: getPadding(top: 14, right: 21), child: Row(children: [SizedBox(width: getHorizontalSize(104), child: RichText(text: TextSpan(children: [TextSpan(text: "lbl_chloroquin".tr, style: theme.textTheme.bodyLarge), TextSpan(text: " \n".tr, style: theme.textTheme.bodyLarge), TextSpan(text: "lbl_capsule_10mg2".tr, style: CustomTextStyles.bodyMediumBluegray500_2)]), textAlign: TextAlign.left)), Spacer(flex: 38), Padding(padding: getPadding(top: 14, bottom: 12), child: Text("lbl_0_2_0".tr, style: CustomTextStyles.bodyMediumBluegray90001)), Spacer(flex: 61), Padding(padding: getPadding(top: 14, bottom: 12), child: Text("lbl_5_days".tr, style: CustomTextStyles.bodyMedium_1))])), Padding(padding: getPadding(top: 14, right: 21), child: Row(children: [SizedBox(width: getHorizontalSize(83), child: RichText(text: TextSpan(children: [TextSpan(text: "lbl_immodium".tr, style: theme.textTheme.bodyLarge), TextSpan(text: " \n".tr, style: theme.textTheme.bodyLarge), TextSpan(text: "lbl_iv_2_5ml".tr, style: CustomTextStyles.bodyMediumBluegray500_2)]), textAlign: TextAlign.left)), Spacer(flex: 44), Padding(padding: getPadding(top: 14, bottom: 12), child: Text("lbl_1_0_1".tr, style: CustomTextStyles.bodyMediumBluegray90001)), Spacer(flex: 55), Padding(padding: getPadding(top: 14, bottom: 12), child: Text("lbl_3_days".tr, style: CustomTextStyles.bodyMedium_1))]))])))])))); } 
/// Navigates to the medicationsTabContainerScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the medicationsTabContainerScreen.
onTapView() { Get.toNamed(AppRoutes.medicationsTabContainerScreen, ); } 
 }