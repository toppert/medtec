import 'package:medtech/core/app_export.dart';import 'package:medtech/presentation/otp_screen/models/otp_model.dart';import 'package:flutter/material.dart';import 'package:medtech/data/models/postId/post_post_id_resp.dart';import 'package:medtech/data/apiClient/api_client.dart';/// A controller class for the OtpScreen.
///
/// This class manages the state of the OtpScreen, including the
/// current otpModelObj
class OtpController extends GetxController {Rx<OtpModel> otpModelObj = OtpModel().obs;

PostPostIdResp postPostIdResp = PostPostIdResp();

/// Calls the http://18.134.213.0/api/v1/auth/validate-otp/{id} API with the specified request data.
///
/// The [Map] parameter represents request body
Future<void> callPostId(Map req) async  { try{
postPostIdResp   =  await Get.find<ApiClient>().postId(requestData: req);
_handlePostIdSuccess();
} on PostPostIdResp catch(e)
{
postPostIdResp = e;
rethrow;
} } 
/// handles the success response for the API
void _handlePostIdSuccess() { 

 } 
 }
