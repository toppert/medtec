import '../../widgets/custom_search_view.dart';
import '../dashboard_screen/widgets/medicationsched_item_widget.dart';
import '../side_navigation_three_draweritem/controller/side_navigation_three_controller.dart';
import '../side_navigation_three_draweritem/side_navigation_three_draweritem.dart';
import 'controller/dashboard_controller.dart';
import 'models/medicationsched_item_model.dart';
import 'package:flutter/material.dart';
import 'package:medtech/core/app_export.dart';
import 'package:medtech/widgets/app_bar/appbar_iconbutton.dart';
import 'package:medtech/widgets/app_bar/appbar_image.dart';
import 'package:medtech/widgets/app_bar/appbar_image_1.dart';
import 'package:medtech/widgets/app_bar/appbar_subtitle_8.dart';
import 'package:medtech/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class DashboardScreen extends GetWidget<DashboardController> {
  DashboardScreen({Key? key}) : super(key: key);

  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            key: _scaffoldKey,
            backgroundColor: appTheme.whiteA700,
            drawer:
                SideNavigationThreeDraweritem(SideNavigationThreeController()),
            appBar: CustomAppBar(
                leadingWidth: getHorizontalSize(43),
                leading: AppbarImage(
                    svgPath: ImageConstant.imgMenu,
                    margin: getMargin(left: 19, top: 15, bottom: 15),
                    onTap: () {
                      onTapMenuoneone();
                    }),
                centerTitle: true,
                title: AppbarSubtitle8(text: "msg_tuesday_5_december".tr),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgVolume,
                      margin: getMargin(left: 17, top: 16, right: 15)),
                  AppbarIconbutton(
                      svgPath: ImageConstant.imgClarityshoppingcartline,
                      margin: getMargin(left: 10, top: 16, right: 32))
                ]),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: getPadding(top: 6),
                    child: Padding(
                        padding: getPadding(left: 19, bottom: 7),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("msg_good_morning_stella".tr,
                                  style:
                                      CustomTextStyles.headlineSmallSemiBold),
                              // CustomSearchView(
                              //   margin: EdgeInsets.only(
                              //     top: 29,
                              //     right: 19,
                              //   ),
                              //   controller: controller.searchController,
                              //   hintText: "lbl_search".tr,
                              //   prefix: Container(
                              //     margin: EdgeInsets.all(15),
                              //     child: CustomImageView(
                              //       svgPath: ImageConstant.imgSearch,
                              //     ),
                              //   ),
                              //   prefixConstraints: BoxConstraints(
                              //     maxHeight: 50,
                              //   ),
                              //   suffix: Container(
                              //     margin: EdgeInsets.fromLTRB(30, 6, 20, 11),
                              //     child: CustomImageView(
                              //       svgPath: ImageConstant
                              //           .imgFilteroptionspreferencessettingssvgrepocom11,
                              //     ),
                              //   ),
                              //   suffixConstraints: BoxConstraints(
                              //     maxHeight: 50,
                              //   ),
                              // ),
                              SizedBox(height: 30),
                              // CustomImageView(
                              //   svgPath: ImageConstant.imgFrame12574Green500,
                              //   height: 70,
                              //   width: 390,
                              // ),
                             // SizedBox(height: 30),
                              Container(
                                  margin: getMargin(top: 29, right: 19),
                                  padding: getPadding(
                                      left: 15, top: 6, right: 15, bottom: 6),
                                  decoration: AppDecoration.fillGray.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder20),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        CustomImageView(
                                            svgPath: ImageConstant.imgSearch,
                                            height: getSize(20),
                                            width: getSize(20),
                                            margin:
                                                getMargin(top: 8, bottom: 8)),
                                        Padding(
                                            padding: getPadding(
                                                left: 15, top: 8, bottom: 8),
                                            child: Text("lbl_search".tr,
                                                style: CustomTextStyles
                                                    .bodyMediumNunitoSansIndigo100)),
                                        Spacer(),
                                        SizedBox(
                                            height: getVerticalSize(36),
                                            child: VerticalDivider(
                                                width: getHorizontalSize(1),
                                                thickness: getVerticalSize(1),
                                                indent: getHorizontalSize(3),
                                                endIndent:
                                                    getHorizontalSize(3))),
                                        CustomImageView(
                                            svgPath:
                                                ImageConstant.imgFilteroptions,
                                            height: getSize(32),
                                            width: getSize(32),
                                            margin: getMargin(
                                                left: 13, right: 5, bottom: 5))
                                      ])),
                              CustomImageView(
                                  svgPath: ImageConstant.imgFrame12574,
                                  height: getVerticalSize(70),
                                  width: getHorizontalSize(390),
                                  margin: getMargin(top: 30)),
                              Card(
                                  clipBehavior: Clip.antiAlias,
                                  elevation: 0,
                                  margin: getMargin(top: 30),
                                  color: appTheme.blue50,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder20),
                                  child: Container(
                                      height: getVerticalSize(184),
                                      width: getHorizontalSize(390),
                                      decoration: AppDecoration.fillBlue
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder20),
                                      child: Stack(
                                          alignment: Alignment.centerLeft,
                                          children: [
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgBeautifulafric,
                                                height: getVerticalSize(184),
                                                width: getHorizontalSize(225),
                                                alignment:
                                                    Alignment.centerRight),
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding:
                                                        getPadding(left: 19),
                                                    child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          SizedBox(
                                                              width:
                                                                  getHorizontalSize(
                                                                      222),
                                                              child: Text(
                                                                  "msg_take_folic_acid"
                                                                      .tr,
                                                                  maxLines: 3,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  style: CustomTextStyles
                                                                      .titleLargeMedium
                                                                      .copyWith(
                                                                          height:
                                                                              1.40))),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 13),
                                                              child: Text(
                                                                  "msg_sicklecellwarriors"
                                                                      .tr,
                                                                  style: theme
                                                                      .textTheme
                                                                      .titleSmall))
                                                        ])))
                                          ]))),
                              Padding(
                                  padding: getPadding(top: 31),
                                  child: Text("msg_upcoming_appointment".tr,
                                      style: CustomTextStyles.titleMedium18)),
                              Container(
                                  margin: getMargin(top: 19, right: 17),
                                  padding: getPadding(top: 10, bottom: 10),
                                  decoration: AppDecoration.fillBlueA.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder20),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                            margin:
                                                getMargin(top: 6, bottom: 5),
                                            padding: getPadding(
                                                left: 19,
                                                top: 21,
                                                right: 19,
                                                bottom: 21),
                                            decoration: AppDecoration
                                                .fillPrimaryContainer
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder25),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text("lbl_12".tr,
                                                      style: theme.textTheme
                                                          .displaySmall),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 2),
                                                      child: Text("lbl_tue".tr,
                                                          style: CustomTextStyles
                                                              .titleMediumPrimaryContainer))
                                                ])),
                                        Container(
                                            height: getVerticalSize(108),
                                            width: getHorizontalSize(262),
                                            margin: getMargin(bottom: 14),
                                            child: Stack(
                                                alignment: Alignment.topRight,
                                                children: [
                                                  Align(
                                                      alignment: Alignment
                                                          .bottomCenter,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              right: 6),
                                                          child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                    "lbl_09_30_am"
                                                                        .tr,
                                                                    style: CustomTextStyles
                                                                        .titleMediumPrimaryContainer),
                                                                Padding(
                                                                    padding:
                                                                        getPadding(
                                                                            top:
                                                                                14),
                                                                    child: Text(
                                                                        "msg_dr_rashida_mohammed"
                                                                            .tr,
                                                                        style: CustomTextStyles
                                                                            .titleLargePrimaryContainer22)),
                                                                Padding(
                                                                    padding:
                                                                        getPadding(
                                                                            top:
                                                                                6),
                                                                    child: Text(
                                                                        "lbl_haematologist"
                                                                            .tr,
                                                                        style: CustomTextStyles
                                                                            .titleMediumPrimaryContainer))
                                                              ]))),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgIcbaselinemorehoriz,
                                                      height: getSize(24),
                                                      width: getSize(24),
                                                      alignment:
                                                          Alignment.topRight)
                                                ]))
                                      ])),
                              Padding(
                                  padding: getPadding(top: 29),
                                  child: Text("msg_current_medications".tr,
                                      style: CustomTextStyles.titleMedium18)),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: SizedBox(
                                      height: getVerticalSize(169),
                                      child: Obx(() => ListView.separated(
                                          padding: getPadding(top: 21),
                                          scrollDirection: Axis.horizontal,
                                          separatorBuilder: (context, index) {
                                            return SizedBox(
                                                width: getHorizontalSize(15));
                                          },
                                          itemCount: controller
                                              .dashboardModelObj
                                              .value
                                              .medicationschedItemList
                                              .value
                                              .length,
                                          itemBuilder: (context, index) {
                                            MedicationschedItemModel model =
                                                controller
                                                    .dashboardModelObj
                                                    .value
                                                    .medicationschedItemList
                                                    .value[index];
                                            return MedicationschedItemWidget(
                                                model);
                                          }))))
                            ]))))));
  }

  /// Opens the drawer of the current scaffold using the [_scaffoldKey] instance
  /// variable.
  onTapMenuoneone() {
    _scaffoldKey.currentState?.openDrawer();
  }
}
