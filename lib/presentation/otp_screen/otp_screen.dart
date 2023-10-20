import 'controller/otp_controller.dart';import 'package:flutter/material.dart';import 'package:medtech/core/app_export.dart';import 'package:medtech/widgets/app_bar/appbar_image.dart';import 'package:medtech/widgets/app_bar/appbar_subtitle.dart';import 'package:medtech/widgets/app_bar/custom_app_bar.dart';import 'package:medtech/widgets/custom_elevated_button.dart';import 'package:medtech/data/models/postId/post_post_id_req.dart';import 'package:medtech/data/models/postId/post_post_id_resp.dart';class OtpScreen extends GetWidget<OtpController> {const OtpScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: appTheme.whiteA700, appBar: CustomAppBar(leadingWidth: getHorizontalSize(43), leading: AppbarImage(svgPath: ImageConstant.imgArrowleft, margin: getMargin(left: 19, top: 16, bottom: 15), onTap: () {onTapArrowleftone();}), centerTitle: true, title: AppbarSubtitle(text: "msg_otp_authentication".tr)), body: Container(width: double.maxFinite, padding: getPadding(left: 17, top: 16, right: 17, bottom: 16), child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Container(width: getHorizontalSize(368), margin: getMargin(left: 2, right: 23), child: Text("msg_an_authentication".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.bodyLarge!.copyWith(height: 1.25)))), Padding(padding: getPadding(left: 23, top: 52, right: 23), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Container(padding: getPadding(left: 18, top: 11, right: 18, bottom: 11), decoration: AppDecoration.outlineIndigo.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Text("lbl".tr, style: CustomTextStyles.titleMediumSemiBold_3)), Container(margin: getMargin(left: 15), padding: getPadding(left: 18, top: 11, right: 18, bottom: 11), decoration: AppDecoration.outlineIndigo.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Text("lbl".tr, style: CustomTextStyles.titleMediumSemiBold_3)), Container(margin: getMargin(left: 15), padding: getPadding(left: 18, top: 11, right: 18, bottom: 11), decoration: AppDecoration.outlineIndigo.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Text("lbl".tr, style: CustomTextStyles.titleMediumSemiBold_3)), Container(margin: getMargin(left: 15), padding: getPadding(left: 18, top: 11, right: 18, bottom: 11), decoration: AppDecoration.outlineIndigo.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Text("lbl".tr, style: CustomTextStyles.titleMediumSemiBold_3)), Container(margin: getMargin(left: 15), padding: getPadding(left: 18, top: 11, right: 18, bottom: 11), decoration: AppDecoration.outlineIndigo.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Text("lbl".tr, style: CustomTextStyles.titleMediumSemiBold_3)), Container(margin: getMargin(left: 15), padding: getPadding(left: 18, top: 11, right: 18, bottom: 11), decoration: AppDecoration.outlineIndigo.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Text("lbl".tr, style: CustomTextStyles.titleMediumSemiBold_3))])), CustomElevatedButton(text: "lbl_verify".tr, margin: getMargin(top: 90), onTap: () {otpauth();}), Padding(padding: getPadding(top: 20, bottom: 5), child: RichText(text: TextSpan(children: [TextSpan(text: "msg_didn_t_get_the_code2".tr, style: theme.textTheme.bodyMedium), TextSpan(text: "lbl_resend".tr, style: CustomTextStyles.titleSmallPrimary_1)]), textAlign: TextAlign.left))])))); } 


/// Navigates to the previous screen.
///
/// When the action is triggered, this function uses the [Get] package to 
/// navigate to the previous screen in the navigation stack.
onTapArrowleftone() { Get.back(); } 
/// calls the [http://18.134.213.0/api/v1/auth/validate-otp/{id}] API 
///
/// It has [PostPostIdReq] as a parameter which will be passed as a API request body
/// If the call is successful, the function calls the `_onOtpauthSuccess()` function.
/// If the call fails, the function calls the `_onOtpauthError()` function.
///
/// Throws a `NoInternetException` if there is no internet connection.
Future<void> otpauth() async  { PostPostIdReq postPostIdReq = PostPostIdReq();try {
await controller.callPostId(postPostIdReq.toJson(),);_onOtpauthSuccess();} on PostPostIdResp {_onOtpauthError();} on NoInternetException catch (e) {Get.rawSnackbar(message: e.toString());} catch (e) {
 //TODO: Handle generic errors
} } 
void _onOtpauthSuccess() {  } 
void _onOtpauthError() { 
 } 
 }
