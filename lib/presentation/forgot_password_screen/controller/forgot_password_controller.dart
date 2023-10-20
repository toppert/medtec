import 'package:medtech/core/app_export.dart';
import 'package:medtech/presentation/forgot_password_screen/models/forgot_password_model.dart';
import 'package:flutter/material.dart';
import 'package:medtech/data/models/postForgotPassword/post_post_forgot_password_resp.dart';
import 'package:medtech/data/apiClient/api_client.dart';

/// A controller class for the ForgotPasswordScreen.
///
/// This class manages the state of the ForgotPasswordScreen, including the
/// current forgotPasswordModelObj
class ForgotPasswordController extends GetxController {
  TextEditingController emailController = TextEditingController();

  Rx<ForgotPasswordModel> forgotPasswordModelObj = ForgotPasswordModel().obs;

  PostPostForgotPasswordResp postPostForgotPasswordResp =
      PostPostForgotPasswordResp();

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
  }

  /// Calls the http://18.134.213.0/api/v1/auth/forgot-password API with the specified request data.
  ///
  /// The [Map] parameter represents request body
  Future<void> callPostForgotPassword(Map req) async {
    try {
      postPostForgotPasswordResp =
          await Get.find<ApiClient>().postForgotPassword(
        headers: {
          'Content-type': 'application/json',
        },
        requestData: req,
      );
      _handlePostForgotPasswordSuccess();
    } on PostPostForgotPasswordResp catch (e) {
      postPostForgotPasswordResp = e;
      rethrow;
    }
  }

  /// handles the success response for the API
  void _handlePostForgotPasswordSuccess() {
    Get.find<PrefUtils>().setMassage(postPostForgotPasswordResp.message ?? '');
  }
}
