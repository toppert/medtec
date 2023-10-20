import 'package:medtech/core/app_export.dart';
import 'package:medtech/presentation/sign_in_screen/models/sign_in_model.dart';
import 'package:flutter/material.dart';
import 'package:medtech/data/models/postLoginAuthApi/post_post_login_auth_api_resp.dart';
import 'package:medtech/data/apiClient/api_client.dart';

/// A controller class for the SignInScreen.
///
/// This class manages the state of the SignInScreen, including the
/// current signInModelObj
class SignInController extends GetxController {
  TextEditingController emailController = TextEditingController();

  TextEditingController passworController = TextEditingController();

  Rx<SignInModel> signInModelObj = SignInModel().obs;

  Rx<bool> isShowPassword = true.obs;

  PostPostLoginAuthApiResp postPostLoginAuthApiResp =
      PostPostLoginAuthApiResp();

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    passworController.dispose();
  }

  /// Calls the http://18.134.213.0/api/v1/auth/login API with the specified request data.
  ///
  /// The [Map] parameter represents request body
  Future<void> callPostLoginAuthApi(Map req) async {
    try {
      postPostLoginAuthApiResp = await Get.find<ApiClient>().postLoginAuthApi(
        headers: {
          'Content-type': 'application/json',
          //'Content-Type': 'application/json',
        },
        requestData: req,
      );
      _handlePostLoginAuthApiSuccess();
    } on PostPostLoginAuthApiResp catch (e) {
      postPostLoginAuthApiResp = e;
      rethrow;
    }
  }

  /// handles the success response for the API
  void _handlePostLoginAuthApiSuccess() {
    Get.find<PrefUtils>().setStatus(postPostLoginAuthApiResp.status ?? '');
    Get.find<PrefUtils>()
       .setAToken(postPostLoginAuthApiResp.data?.accessToken ?? '');
    Get.find<PrefUtils>()
       .setRtoken(postPostLoginAuthApiResp.data?.refreshToken ?? '');
  }
}
