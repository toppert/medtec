import 'controller/appointment_created_later_controller.dart';
import 'package:flutter/material.dart';
import 'package:medtech/core/app_export.dart';
import 'package:medtech/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class AppointmentCreatedLaterScreen
    extends GetWidget<AppointmentCreatedLaterController> {
  const AppointmentCreatedLaterScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primaryContainer.withOpacity(1),
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 58,
            top: 19,
            right: 58,
            bottom: 19,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                svgPath: ImageConstant.imgArrowdown,
                height: getSize(100),
                width: getSize(100),
              ),
              Padding(
                padding: getPadding(
                  top: 18,
                ),
                child: Text(
                  "lbl_thank_you".tr,
                  style: CustomTextStyles.titleLargeBlueA400,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 20,
                ),
                child: Text(
                  "msg_appointment_created".tr,
                  style: CustomTextStyles.titleLargeMedium,
                ),
              ),
              Container(
                width: getHorizontalSize(310),
                margin: getMargin(
                  top: 20,
                ),
                child: Text(
                  "msg_you_booked_an_appointment".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodyMedium!.copyWith(
                    height: 1.57,
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomElevatedButton(
          height: getVerticalSize(43),
          text: "lbl_done".tr,
          margin: getMargin(
            left: 19,
            right: 19,
            bottom: 20,
          ),
        ),
      ),
    );
  }
}
