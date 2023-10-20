import 'controller/health_profile_controller.dart';import 'package:flutter/material.dart';import 'package:medtech/core/app_export.dart';import 'package:medtech/widgets/custom_elevated_button.dart';import 'package:medtech/widgets/custom_outlined_button.dart';import 'package:medtech/widgets/custom_text_form_field.dart';class HealthProfileScreen extends GetWidget<HealthProfileController> {const HealthProfileScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, backgroundColor: appTheme.whiteA700, body: SizedBox(width: mediaQueryData.size.width, child: SingleChildScrollView(child: Padding(padding: getPadding(bottom: 5), child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [CustomElevatedButton(height: getVerticalSize(83), text: "lbl_health_profile".tr, leftIcon: Container(margin: getMargin(right: 30), child: CustomImageView(svgPath: ImageConstant.imgArrowleftGray900)), buttonStyle: CustomButtonStyles.fillPrimaryContainer1, buttonTextStyle: theme.textTheme.headlineSmall!, onTap: () {onTapHealthprofile();}), Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 19, top: 16), child: Text("msg_update_your_health".tr, style: theme.textTheme.bodyLarge))), Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 19, top: 28), child: Row(children: [CustomImageView(imagePath: ImageConstant.imgRectangle117, height: getSize(80), width: getSize(80), radius: BorderRadius.circular(getHorizontalSize(10))), CustomElevatedButton(height: getVerticalSize(29), width: getHorizontalSize(101), text: "lbl_upload_photo".tr, margin: getMargin(left: 8, top: 25, bottom: 25), buttonStyle: CustomButtonStyles.fillPrimaryContainerTL14, buttonTextStyle: CustomTextStyles.titleSmallPrimary)]))), Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 19, top: 31), child: Text("lbl_blood_group".tr, style: theme.textTheme.titleMedium))), CustomTextFormField(controller: controller.enteroneController, margin: getMargin(left: 19, top: 8, right: 19), hintText: "lbl_enter".tr, hintStyle: CustomTextStyles.bodyMediumBluegray500_1), Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 19, top: 21), child: RichText(text: TextSpan(children: [TextSpan(text: "msg_steady_state_pvc2".tr, style: theme.textTheme.titleMedium), TextSpan(text: "lbl_optional".tr, style: CustomTextStyles.bodyMediumBluegray500_2)]), textAlign: TextAlign.left))), CustomTextFormField(controller: controller.enteroneoneController, margin: getMargin(left: 19, top: 8, right: 19), hintText: "lbl_enter".tr, hintStyle: CustomTextStyles.bodyMediumBluegray500_1), Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 19, top: 21), child: RichText(text: TextSpan(children: [TextSpan(text: "msg_last_confirmed_pvc2".tr, style: theme.textTheme.titleMedium), TextSpan(text: "lbl_optional".tr, style: CustomTextStyles.bodyMediumBluegray500_2)]), textAlign: TextAlign.left))), CustomTextFormField(controller: controller.entertwooneController, margin: getMargin(left: 19, top: 8, right: 19), hintText: "lbl_enter".tr, hintStyle: CustomTextStyles.bodyMediumBluegray500_1), Padding(padding: getPadding(top: 20), child: Divider(color: appTheme.gray30001, indent: getHorizontalSize(19), endIndent: getHorizontalSize(19))), Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 19, top: 20), child: Text("msg_current_condition_s".tr, style: CustomTextStyles.titleMediumSecondaryContainer_1))), Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 19, top: 18), child: Text("lbl_condition_name".tr, style: theme.textTheme.titleMedium))), CustomTextFormField(controller: controller.nameController, margin: getMargin(left: 19, top: 15, right: 19), hintText: "lbl_enter".tr, hintStyle: CustomTextStyles.bodyMediumBluegray500_1), Container(margin: getMargin(top: 20), padding: getPadding(top: 1, bottom: 1), decoration: AppDecoration.white.copyWith(borderRadius: BorderRadiusStyle.roundedBorder4), child: Text("lbl_additional_note".tr, style: theme.textTheme.titleMedium)), CustomTextFormField(controller: controller.inputoneoneController, margin: getMargin(left: 19, top: 15, right: 19), hintText: "lbl_enter_text".tr, hintStyle: CustomTextStyles.bodyMediumBluegray500_1, suffix: Container(margin: getMargin(left: 30, top: 8, right: 8, bottom: 8), child: CustomImageView(svgPath: ImageConstant.imgCheckmark)), suffixConstraints: BoxConstraints(maxHeight: getVerticalSize(128)), maxLines: 7, contentPadding: getPadding(left: 8, top: 9, right: 8, bottom: 9)), Align(alignment: Alignment.centerRight, child: Padding(padding: getPadding(top: 6, right: 19), child: Text("lbl_0_300".tr, style: CustomTextStyles.labelLargeIndigo100_1))), Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 19, top: 22), child: Row(children: [CustomImageView(svgPath: ImageConstant.imgPlus, height: getSize(24), width: getSize(24)), Padding(padding: getPadding(left: 4, top: 3, bottom: 3), child: Text("lbl_add_condition".tr, style: CustomTextStyles.titleSmallPrimarySemiBold))]))), Padding(padding: getPadding(top: 20), child: Divider(color: appTheme.gray30001, indent: getHorizontalSize(19), endIndent: getHorizontalSize(19))), Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 19, top: 20), child: Text("lbl_allergy_s".tr, style: CustomTextStyles.titleMediumSecondaryContainer_1))), Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 19, top: 20), child: Text("lbl_allergy_type".tr, style: theme.textTheme.titleMedium))), CustomTextFormField(controller: controller.enterthreeoneController, margin: getMargin(left: 19, top: 13, right: 19), hintText: "lbl_enter".tr, hintStyle: CustomTextStyles.bodyMediumBluegray500_1), Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 19, top: 21), child: Text("lbl_severity".tr, style: theme.textTheme.titleMedium))), CustomOutlinedButton(height: getVerticalSize(46), text: "lbl_select".tr, margin: getMargin(left: 19, top: 13, right: 19), rightIcon: Container(padding: getPadding(left: 5, top: 7, right: 5, bottom: 7), margin: getMargin(left: 30), decoration: BoxDecoration(color: theme.colorScheme.primaryContainer.withOpacity(1), borderRadius: BorderRadius.circular(getHorizontalSize(4))), child: CustomImageView(svgPath: ImageConstant.imgChevron)), buttonStyle: CustomButtonStyles.outlineIndigo, buttonTextStyle: CustomTextStyles.bodyMediumBluegray500_1), Container(margin: getMargin(top: 20), padding: getPadding(top: 1, bottom: 1), decoration: AppDecoration.white.copyWith(borderRadius: BorderRadiusStyle.roundedBorder4), child: Text("lbl_additional_note".tr, style: theme.textTheme.titleMedium)), CustomTextFormField(controller: controller.inputthreeoneController, margin: getMargin(left: 19, top: 15, right: 19), hintText: "lbl_enter_text".tr, hintStyle: CustomTextStyles.bodyMediumBluegray500_1, suffix: Container(margin: getMargin(left: 30, top: 8, right: 8, bottom: 8), child: CustomImageView(svgPath: ImageConstant.imgCheckmark)), suffixConstraints: BoxConstraints(maxHeight: getVerticalSize(128)), maxLines: 7, contentPadding: getPadding(left: 8, top: 9, right: 8, bottom: 9)), Align(alignment: Alignment.centerRight, child: Padding(padding: getPadding(top: 6, right: 19), child: Text("lbl_0_300".tr, style: CustomTextStyles.labelLargeIndigo100_1))), Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 19, top: 22), child: Row(children: [CustomImageView(svgPath: ImageConstant.imgPlus, height: getSize(24), width: getSize(24)), Padding(padding: getPadding(left: 4, top: 4, bottom: 2), child: Text("lbl_add_allergy".tr, style: CustomTextStyles.titleSmallPrimarySemiBold))]))), Padding(padding: getPadding(top: 20), child: Divider(color: appTheme.gray30001, indent: getHorizontalSize(19), endIndent: getHorizontalSize(19))), Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 19, top: 20), child: Text("lbl_managing_doctor".tr, style: theme.textTheme.titleMedium))), CustomTextFormField(controller: controller.enterfouroneController, margin: getMargin(left: 19, top: 13, right: 19), hintText: "lbl_enter".tr, hintStyle: CustomTextStyles.bodyMediumBluegray500_1, textInputAction: TextInputAction.done)])))), bottomNavigationBar: CustomElevatedButton(text: "lbl_save".tr, margin: getMargin(left: 19, right: 19, bottom: 25)))); } 
/// Navigates to the accountSettingsScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the accountSettingsScreen.
onTapHealthprofile() { Get.toNamed(AppRoutes.accountSettingsScreen, ); } 
 }