import 'controller/forgot_password_controller.dart';import 'package:flutter/material.dart';import 'package:medtech/core/app_export.dart';import 'package:medtech/widgets/app_bar/appbar_image.dart';import 'package:medtech/widgets/app_bar/appbar_subtitle.dart';import 'package:medtech/widgets/app_bar/custom_app_bar.dart';import 'package:medtech/widgets/custom_elevated_button.dart';import 'package:medtech/widgets/custom_text_form_field.dart';import 'package:medtech/data/models/postForgotPassword/post_post_forgot_password_req.dart';import 'package:medtech/data/models/postForgotPassword/post_post_forgot_password_resp.dart';class ForgotPasswordScreen extends GetWidget<ForgotPasswordController> {const ForgotPasswordScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, backgroundColor: appTheme.whiteA700, appBar: CustomAppBar(leadingWidth: getHorizontalSize(43), leading: AppbarImage(svgPath: ImageConstant.imgArrowleft, margin: getMargin(left: 19, top: 14, bottom: 17), onTap: () {onTapArrowleftone();}), centerTitle: true, title: AppbarSubtitle(text: "msg_forgot_password".tr)), body: Container(width: double.maxFinite, padding: getPadding(left: 15, top: 20, right: 15, bottom: 20), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Container(width: getHorizontalSize(370), margin: getMargin(left: 4, right: 23), child: Text("msg_don_t_worry_it".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.bodyLarge!.copyWith(height: 1.44))), Padding(padding: getPadding(left: 4, top: 33), child: Text("lbl_email".tr, style: theme.textTheme.titleMedium)), CustomTextFormField(controller: controller.emailController, margin: getMargin(left: 4, top: 10), hintText: "lbl_enter".tr, hintStyle: CustomTextStyles.bodyMediumBluegray500_1, textInputAction: TextInputAction.done), CustomElevatedButton(text: "lbl_submit".tr, margin: getMargin(left: 4, top: 75), onTap: () {forget();}), Align(alignment: Alignment.center, child: Padding(padding: getPadding(top: 25, bottom: 5), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(svgPath: ImageConstant.imgArrowleftGray900, height: getSize(20), width: getSize(20)), Padding(padding: getPadding(left: 10, top: 3), child: Text("lbl_back_to_sign_in".tr, style: CustomTextStyles.bodySmallGray900_1))])))])))); } 


/// Navigates to the previous screen.
///
/// When the action is triggered, this function uses the [Get] package to 
/// navigate to the previous screen in the navigation stack.
onTapArrowleftone() { Get.back(); } 
/// calls the [http://18.134.213.0/api/v1/auth/forgot-password] API 
///
/// It has [PostPostForgotPasswordReq] as a parameter which will be passed as a API request body
/// If the call is successful, the function calls the `_onForgetSuccess()` function.
/// If the call fails, the function calls the `_onForgetError()` function.
///
/// Throws a `NoInternetException` if there is no internet connection.
Future<void> forget() async  { PostPostForgotPasswordReq postPostForgotPasswordReq = PostPostForgotPasswordReq(email : controller.emailController.text,);try {
await controller.callPostForgotPassword(postPostForgotPasswordReq.toJson(),);_onForgetSuccess();} on PostPostForgotPasswordResp {_onForgetError();} on NoInternetException catch (e) {Get.rawSnackbar(message: e.toString());} catch (e) {
 //TODO: Handle generic errors
} } 
/// Displays a snackBar message when the action is triggered.
/// The status is obtained from the `PostPostForgotPasswordResp` object
///in the `controller` instance.
void _onForgetSuccess() { 
Get.rawSnackbar(message: controller.postPostForgotPasswordResp.status.toString() ?? ''); } 
/// Displays a snackBar message when the action is triggered.
/// The message is obtained from the `PostPostForgotPasswordResp` object
///in the `controller` instance.
void _onForgetError() { 

Get.rawSnackbar(message: controller.postPostForgotPasswordResp.message.toString() ?? ''); } 
 }
