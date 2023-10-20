import 'controller/side_navigation_three_controller.dart';
import 'package:flutter/material.dart';
import 'package:medtech/core/app_export.dart';
import 'package:medtech/widgets/custom_elevated_button.dart';
import 'package:medtech/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SideNavigationThreeDraweritem extends StatelessWidget {
  SideNavigationThreeDraweritem(this.controller, {Key? key}) : super(key: key);

  SideNavigationThreeController controller;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Drawer(
        child: Container(
            width: getHorizontalSize(325),
            padding: getPadding(left: 25, top: 41, right: 25, bottom: 41),
            decoration: AppDecoration.outlineBlueGray
                .copyWith(borderRadius: BorderRadiusStyle.customBorderLR30),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgRectangle117,
                      height: getSize(70),
                      width: getSize(70),
                      radius: BorderRadius.circular(getHorizontalSize(10))),
                  Padding(
                      padding: getPadding(top: 19),
                      child: Text("lbl_stella_adebayo".tr,
                          style: theme.textTheme.titleMedium)),
                  Padding(
                      padding: getPadding(top: 7),
                      child: Text("msg_stella_adebayo_gmail_com".tr,
                          style: theme.textTheme.bodyMedium)),
                  Padding(
                      padding: getPadding(top: 28),
                      child: Divider(
                          color: appTheme.gray10002,
                          endIndent: getHorizontalSize(5))),
                  CustomElevatedButton(
                      height: getVerticalSize(24),
                      width: getHorizontalSize(77),
                      text: "lbl_home".tr,
                      margin: getMargin(left: 10, top: 44),
                      leftIcon: Container(
                          margin: getMargin(right: 13),
                          child: CustomImageView(
                              svgPath: ImageConstant.imgHomesvgrepocom1)),
                      buttonStyle: CustomButtonStyles.none,
                      buttonTextStyle: theme.textTheme.bodyMedium!,
                      onTap: () {
                        onTapHome();
                      }),
                  CustomElevatedButton(
                      height: getVerticalSize(24),
                      width: getHorizontalSize(134),
                      text: "lbl_appointments".tr,
                      margin: getMargin(left: 10, top: 30),
                      leftIcon: Container(
                          margin: getMargin(right: 13),
                          child: CustomImageView(
                              svgPath: ImageConstant.imgCalendarsvgrepocom11)),
                      buttonStyle: CustomButtonStyles.none,
                      buttonTextStyle: theme.textTheme.bodyMedium!,
                      onTap: () {
                        onTapAppointments();
                      }),
                 CustomElevatedButton(
                     height: getVerticalSize(24),
                     width: getHorizontalSize(77),
                     text: "lbl_consultations".tr,
                     margin: getMargin(left: 10, top: 44),
                     leftIcon: Container(
                         margin: getMargin(right: 13),
                         child: CustomImageView(
                             svgPath: ImageConstant.imgMedicalhistory,)),
                     buttonStyle: CustomButtonStyles.none,
                     buttonTextStyle: theme.textTheme.bodyMedium!,
                     onTap: () {
                      onTabConsult();
                     }),
                 CustomElevatedButton(
                     height: getVerticalSize(24),
                     width: getHorizontalSize(77),
                     text: "lbl_medications".tr,
                     margin: getMargin(left: 10, top: 44),
                     leftIcon: Container(
                         margin: getMargin(right: 13),
                         child: CustomImageView(
                          svgPath: ImageConstant.imgPillssvgrepocom,)),
                     buttonStyle: CustomButtonStyles.none,
                     buttonTextStyle: theme.textTheme.bodyMedium!,
                     onTap: () {
                      onTabMed();
                     }),

                 CustomElevatedButton(
                     height: getVerticalSize(24),
                     width: getHorizontalSize(77),
                     text: "lbl_lab_tests".tr,
                     margin: getMargin(left: 10, top: 44),
                     leftIcon: Container(
                         margin: getMargin(right: 13),
                         child: CustomImageView(
                          svgPath: ImageConstant.imgLabsvgrepocom,)),
                     buttonStyle: CustomButtonStyles.none,
                     buttonTextStyle: theme.textTheme.bodyMedium!,
                     onTap: () {
                      onTabLab();
                     }),


                  Padding(
                      padding: getPadding(top: 45),
                      child: Divider(
                          color: appTheme.gray10002,
                          endIndent: getHorizontalSize(5))),

                 CustomElevatedButton(
                     height: getVerticalSize(24),
                     width: getHorizontalSize(77),
                     text: "lbl_pharmacy".tr,
                     margin: getMargin(left: 10, top: 44),
                     leftIcon: Container(
                         margin: getMargin(right: 13),
                         child: CustomImageView(
                          svgPath: ImageConstant.imgPharmacysvgrepocom,)),
                     buttonStyle: CustomButtonStyles.none,
                     buttonTextStyle: theme.textTheme.bodyMedium!,
                     onTap: () {
                      onTabPharm();
                     }),

                 CustomElevatedButton(
                     height: getVerticalSize(24),
                     width: getHorizontalSize(77),
                     text: "lbl_scw_community".tr,
                     margin: getMargin(left: 10, top: 44),
                     leftIcon: Container(
                         margin: getMargin(right: 13),
                         child: CustomImageView(
                          svgPath:  ImageConstant.imgGrouppeoplesvgrepocom,)),
                     buttonStyle: CustomButtonStyles.none,
                     buttonTextStyle: theme.textTheme.bodyMedium!,
                     onTap: () {
                      onTabSwc();
                     }),

                 CustomElevatedButton(
                     height: getVerticalSize(24),
                     width: getHorizontalSize(77),
                     text: "msg_account_settings".tr,
                     margin: getMargin(left: 10, top: 44),
                     leftIcon: Container(
                         margin: getMargin(right: 13),
                         child: CustomImageView(
                          svgPath:  ImageConstant.imgCarbonsettings)),
                     buttonStyle: CustomButtonStyles.none,
                     buttonTextStyle: theme.textTheme.bodyMedium!,
                     onTap: () {
                      onTabAccount();
                     }),
                  // CustomTextFormField(
                  //     controller: controller.accountsettingsController,
                  //     margin: getMargin(top: 15, right: 5),
                  //     hintText: "msg_account_settings".tr,
                  //     hintStyle: CustomTextStyles.titleSmallPrimary,
                  //     textInputAction: TextInputAction.done,
                  //     prefix: Container(
                  //         margin: getMargin(
                  //             left: 10, top: 15, right: 13, bottom: 15),
                  //         child: CustomImageView(
                  //             svgPath: ImageConstant.imgCarbonsettings)),
                  //     prefixConstraints:
                  //         BoxConstraints(maxHeight: getVerticalSize(54)),
                  //     contentPadding:
                  //         getPadding(top: 18, right: 30, bottom: 18),
                  //     borderDecoration: TextFormFieldStyleHelper.fillPrimary,
                  //     fillColor: theme.colorScheme.primary.withOpacity(0.03)),
                  CustomElevatedButton(
                      height: getVerticalSize(24),
                      width: getHorizontalSize(119),
                      text: "lbl_help_center".tr,
                      margin: getMargin(left: 10, top: 15, bottom: 15),
                      leftIcon: Container(
                          margin: getMargin(right: 13),
                          child: CustomImageView(
                              svgPath:
                                  ImageConstant.imgFluentchathelp20regular)),
                      buttonStyle: CustomButtonStyles.none,
                      buttonTextStyle: theme.textTheme.bodyMedium!,
                      onTap: () {
                        onTapHelpcenter();
                      })
                ])));
  }

  /// Navigates to the dashboardScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the dashboardScreen.
  onTapHome() {
    Get.toNamed(
      AppRoutes.dashboardScreen,
    );
  }

  onTabMed(){
   Get.toNamed(
    AppRoutes.medicationsTabContainerScreen,

   );
  }

  onTabPharm(){
   Get.toNamed(
    AppRoutes.pharmacyScreen,
   );
  }

  onTabSwc(){
   Get.toNamed(
    AppRoutes.scwCommunityScreen,
   );
  }

  onTabLab(){
    Get.toNamed(
      AppRoutes.bookLabTestScreen,
    );
  }

  onTabAccount(){
   Get.toNamed(AppRoutes.accountSettingsScreen);
  }
  /// Navigates to the appointmentsScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the appointmentsScreen.
  onTapAppointments() {
    Get.toNamed(
      AppRoutes.appointmentsScreen,
    );
  }

  /// Navigates to the consultationsEmptyStateScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the consultationsEmptyStateScreen.
  onTabConsult() {
    Get.toNamed(
      AppRoutes.consultationsEmptyStateScreen,
    );
  }

  /// Navigates to the helpCenterScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the helpCenterScreen.
  onTapHelpcenter() {
    Get.toNamed(
      AppRoutes.helpCenterScreen,
    );
  }
}
