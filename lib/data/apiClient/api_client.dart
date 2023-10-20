import 'package:medtech/core/app_export.dart';
import 'package:medtech/core/utils/progress_dialog_utils.dart';
import 'package:medtech/data/models/postForgotPassword/post_post_forgot_password_resp.dart';
import 'package:medtech/data/models/postId/post_post_id_resp.dart';
import 'package:medtech/data/models/postLoginAuthApi/post_post_login_auth_api_resp.dart';
import 'package:medtech/data/models/registerUserPost/post_register_user_post_resp.dart';

class ApiClient extends GetConnect {
  var url = "http://18.134.213.0";

  @override
  void onInit() {
    super.onInit();
    httpClient.timeout = const Duration(seconds: 60);

    // httpClient.addRequestModifier<dynamic>((request) {
    //   Map<String, String> headers = {
    //     "Content-Type": "multipart/form-data",
    //     "Authorization":
    //         "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYzYTNmOTI0NTNjODViYzEyNjU4ZjNiZSIsInVzZXJuYW1lIjoiSnVkZ2VfQ3JvbmluIiwiaWF0IjoxNjcxNjk3MTcxfQ.hbZLKSsS6Mdj1ndhAf4rm_5we4iWYvKY1VPSo51sQRM"
    //   };
    //   request.headers.addAll(headers);
    //   return request;
    // }
    //);
  }

  ///method can be used for checking internet connection
  ///returns [bool] based on availability of internet
  Future isNetworkConnected() async {
    if (!await Get.find<NetworkInfo>().isConnected()) {
      throw NoInternetException('No Internet Found!');
    }
  }

  /// is `true` when the response status code is between 200 and 299
  ///
  /// user can modify this method with custom logics based on their API response
  bool _isSuccessCall(Response response) {
    return response.isOk;
  }

  /// Performs API call for http://18.134.213.0/api/v1/auth/forgot-password
  ///
  /// Sends a POST request to the server's 'http://18.134.213.0/api/v1/auth/forgot-password' endpoint
  /// with the provided headers and request data
  /// Returns a [PostPostForgotPasswordResp] object representing the response.
  /// Throws an error if the request fails or an exception occurs.
  Future<PostPostForgotPasswordResp> postForgotPassword({
    Map<String, String> headers = const {},
    Map requestData = const {},
  }) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient.post(
        '$url/api/v1/auth/forgot-password',
        headers: headers,
        body: requestData,
      );
      ProgressDialogUtils.hideProgressDialog();
      if (_isSuccessCall(response)) {
        return PostPostForgotPasswordResp.fromJson(response.body);
      } else {
        throw response.body != null
            ? PostPostForgotPasswordResp.fromJson(response.body)
            : 'Something Went Wrong!';
      }
    } catch (error, stackTrace) {
      ProgressDialogUtils.hideProgressDialog();
      Logger.log(
        error,
        stackTrace: stackTrace,
      );
      rethrow;
    }
  }

  /// Performs API call for http://18.134.213.0/api/v1/auth/validate-otp/{id}
  ///
  /// Sends a POST request to the server's 'http://18.134.213.0/api/v1/auth/validate-otp/{id}' endpoint
  /// with the provided headers and request data
  /// Returns a [PostPostIdResp] object representing the response.
  /// Throws an error if the request fails or an exception occurs.
  Future<PostPostIdResp> postId({
    Map<String, String> headers = const {},
    Map requestData = const {},
  }) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient.post(
        '$url/api/v1/auth/validate-otp/{id}',
        headers: headers,
        body: requestData,
      );
      ProgressDialogUtils.hideProgressDialog();
      if (_isSuccessCall(response)) {
        return PostPostIdResp.fromJson(response.body);
      } else {
        throw response.body != null
            ? PostPostIdResp.fromJson(response.body)
            : 'Something Went Wrong!';
      }
    } catch (error, stackTrace) {
      ProgressDialogUtils.hideProgressDialog();
      Logger.log(
        error,
        stackTrace: stackTrace,
      );
      rethrow;
    }
  }

  /// Performs API call for http://18.134.213.0/api/v1/auth/login
  ///
  /// Sends a POST request to the server's 'http://18.134.213.0/api/v1/auth/login' endpoint
  /// with the provided headers and request data
  /// Returns a [PostPostLoginAuthApiResp] object representing the response.
  /// Throws an error if the request fails or an exception occurs.
  Future<PostPostLoginAuthApiResp> postLoginAuthApi({
    Map<String, String> headers = const {},
    Map requestData = const {},
  }) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient.post(
        '$url/api/v1/auth/login',
        headers: headers,
        body: requestData,
      );
      ProgressDialogUtils.hideProgressDialog();
      if (_isSuccessCall(response)) {
        return PostPostLoginAuthApiResp.fromJson(response.body);
      } else {
        throw response.body != null
            ? PostPostLoginAuthApiResp.fromJson(response.body)
            : 'Something Went Wrong!';
      }
    } catch (error, stackTrace) {
      ProgressDialogUtils.hideProgressDialog();
      Logger.log(
        error,
        stackTrace: stackTrace,
      );
      rethrow;
    }
  }

  /// Performs API call for http://18.134.213.0/api/v1/auth/register
  ///
  /// Sends a POST request to the server's 'http://18.134.213.0/api/v1/auth/register' endpoint
  /// with the provided headers and request data
  /// Returns a [PostRegisterUserPostResp] object representing the response.
  /// Throws an error if the request fails or an exception occurs.
  Future<PostRegisterUserPostResp> registerUserPost({
    Map<String, String> headers = const {},
    Map requestData = const {},
  }) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient.post(
        '$url/api/v1/auth/register',
        headers: headers,
        body: requestData,
      );
      ProgressDialogUtils.hideProgressDialog();
      if (_isSuccessCall(response)) {
        return PostRegisterUserPostResp.fromJson(response.body);
      } else {
        throw response.body != null
            ? PostRegisterUserPostResp.fromJson(response.body)
            : 'Something Went Wrong!';
      }
    } catch (error, stackTrace) {
      ProgressDialogUtils.hideProgressDialog();
      Logger.log(
        error,
        stackTrace: stackTrace,
      );
      rethrow;
    }
  }
}
