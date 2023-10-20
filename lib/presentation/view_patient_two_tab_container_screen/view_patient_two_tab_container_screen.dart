import 'controller/view_patient_two_tab_container_controller.dart';import 'package:flutter/material.dart';import 'package:medtech/core/app_export.dart';import 'package:medtech/presentation/view_patient_three_page/view_patient_three_page.dart';import 'package:medtech/presentation/view_patient_two_page/view_patient_two_page.dart';import 'package:medtech/widgets/app_bar/appbar_image.dart';import 'package:medtech/widgets/app_bar/appbar_title.dart';import 'package:medtech/widgets/app_bar/custom_app_bar.dart';class ViewPatientTwoTabContainerScreen extends GetWidget<ViewPatientTwoTabContainerController> {const ViewPatientTwoTabContainerScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: appTheme.whiteA700, appBar: CustomAppBar(height: getVerticalSize(83), leadingWidth: getHorizontalSize(43), leading: AppbarImage(svgPath: ImageConstant.imgArrowleftGray900, margin: getMargin(left: 19, top: 40, bottom: 19), onTap: () {onTapArrowleftone();}), title: AppbarTitle(text: "lbl_view_patient".tr, margin: getMargin(left: 35, top: 37, bottom: 16)), styleType: Style.bgFill), body: SizedBox(width: double.maxFinite, child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Padding(padding: getPadding(left: 19, top: 30, right: 87), child: Row(children: [CustomImageView(imagePath: ImageConstant.imgEllipse87, height: getSize(60), width: getSize(60), radius: BorderRadius.circular(getHorizontalSize(30))), Expanded(child: Padding(padding: getPadding(left: 15, top: 5, bottom: 3), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Text("lbl_ejiro_osarobo".tr, style: CustomTextStyles.headlineSmallSemiBold), Padding(padding: getPadding(top: 5), child: Row(children: [Text("lbl_gender_female".tr, style: CustomTextStyles.bodyMediumGray600_1), Padding(padding: getPadding(top: 2), child: SizedBox(child: Divider(color: appTheme.gray600, indent: getHorizontalSize(15)))), Padding(padding: getPadding(left: 14), child: Text("lbl_dob_12_12_1993".tr, style: CustomTextStyles.bodyMediumGray600_1))]))])))])), Container(height: getVerticalSize(26), width: getHorizontalSize(389), margin: getMargin(top: 38), child: TabBar(controller: controller.tabviewController, isScrollable: true, labelColor: appTheme.gray900, labelStyle: TextStyle(fontSize: getFontSize(12), fontFamily: 'Work Sans', fontWeight: FontWeight.w600), unselectedLabelColor: appTheme.blueGray500, unselectedLabelStyle: TextStyle(fontSize: getFontSize(12), fontFamily: 'Work Sans', fontWeight: FontWeight.w400), indicatorColor: theme.colorScheme.primary, tabs: [Tab(child: Text("lbl_overview".tr)), Tab(child: Text("msg_conditions_allergies".tr)), Tab(child: Text("lbl_medication".tr)), Tab(child: Text("lbl_history".tr))])), Expanded(child: SizedBox(height: getVerticalSize(654), child: TabBarView(controller: controller.tabviewController, children: [ViewPatientTwoPage(), ViewPatientThreePage(), ViewPatientThreePage(), ViewPatientThreePage()])))])))); } 


/// Navigates to the previous screen.
///
/// When the action is triggered, this function uses the [Get] package to 
/// navigate to the previous screen in the navigation stack.
onTapArrowleftone() { Get.back(); } 
 }
