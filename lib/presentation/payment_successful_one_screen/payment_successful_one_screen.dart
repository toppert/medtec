import 'controller/payment_successful_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:medtech/core/app_export.dart';
import 'package:medtech/widgets/app_bar/appbar_image_1.dart';
import 'package:medtech/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:medtech/widgets/app_bar/custom_app_bar.dart';
import 'package:medtech/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class PaymentSuccessfulOneScreen
    extends GetWidget<PaymentSuccessfulOneController> {
  const PaymentSuccessfulOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primaryContainer.withOpacity(1),
        appBar: CustomAppBar(
          title: AppbarSubtitle3(
            text: "msg_payment_successful".tr,
            margin: getMargin(
              left: 20,
            ),
          ),
          actions: [
            AppbarImage1(
              svgPath: ImageConstant.imgEvacloseoutlineBlack900,
              margin: getMargin(
                left: 20,
                top: 16,
                right: 20,
                bottom: 16,
              ),
            ),
          ],
        ),
        body: Container(
          width: getHorizontalSize(388),
          margin: getMargin(
            left: 20,
            top: 9,
            right: 20,
          ),
          padding: getPadding(
            left: 19,
            top: 15,
            right: 19,
            bottom: 15,
          ),
          decoration: AppDecoration.outlineGray30001.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder8,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                svgPath: ImageConstant.imgTeenyiconstickcirclesolid,
                height: getSize(40),
                width: getSize(40),
              ),
              Padding(
                padding: getPadding(
                  top: 16,
                ),
                child: Text(
                  "lbl_successful".tr,
                  style: CustomTextStyles.titleMediumGreen500,
                ),
              ),
              Container(
                width: getHorizontalSize(327),
                margin: getMargin(
                  left: 11,
                  top: 21,
                  right: 10,
                ),
                child: Text(
                  "msg_your_transaction".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodyMedium!.copyWith(
                    height: 1.71,
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 18,
                ),
                child: Divider(
                  color: appTheme.gray30001,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 7,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "lbl_amount3".tr,
                      style: theme.textTheme.bodyMedium,
                    ),
                    Text(
                      "lbl_10_500_00".tr,
                      style: CustomTextStyles.titleSmallGreen500,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "lbl_order_id".tr,
                      style: theme.textTheme.bodyMedium,
                    ),
                    Text(
                      "lbl_166523".tr,
                      style: CustomTextStyles.titleSmallGreen500,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 11,
                  bottom: 5,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "lbl_transaction_id".tr,
                      style: theme.textTheme.bodyMedium,
                    ),
                    Text(
                      "lbl_44317792355490".tr,
                      style: CustomTextStyles.titleSmallGreen500,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomElevatedButton(
          height: getVerticalSize(43),
          text: "lbl_done".tr,
          margin: getMargin(
            left: 20,
            right: 20,
            bottom: 20,
          ),
        ),
      ),
    );
  }
}
