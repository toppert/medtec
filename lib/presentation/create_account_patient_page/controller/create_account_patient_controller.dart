import 'package:medtech/core/app_export.dart';import 'package:medtech/presentation/create_account_patient_page/models/create_account_patient_model.dart';import 'package:flutter/material.dart';import 'package:medtech/data/models/registerUserPost/post_register_user_post_resp.dart';import 'package:medtech/data/apiClient/api_client.dart';/// A controller class for the CreateAccountPatientPage.
///
/// This class manages the state of the CreateAccountPatientPage, including the
/// current createAccountPatientModelObj
class CreateAccountPatientController extends GetxController {CreateAccountPatientController(this.createAccountPatientModelObj);

TextEditingController firstNameController = TextEditingController();

TextEditingController lastNameController = TextEditingController();

TextEditingController phoneNumberController = TextEditingController();

TextEditingController emailController = TextEditingController();

TextEditingController passwordController = TextEditingController();

TextEditingController confirmpasswordController = TextEditingController();

Rx<CreateAccountPatientModel> createAccountPatientModelObj;

Rx<bool> isShowPassword = true.obs;

Rx<bool> isShowPassword1 = true.obs;

PostRegisterUserPostResp postRegisterUserPostResp = PostRegisterUserPostResp();

@override void onClose() { super.onClose(); firstNameController.dispose(); lastNameController.dispose(); phoneNumberController.dispose(); emailController.dispose(); passwordController.dispose(); confirmpasswordController.dispose(); } 
/// Calls the http://18.134.213.0/api/v1/auth/register API with the specified request data.
///
/// The [Map] parameter represents request body
Future<void> callRegisterUserPost(Map req) async  { try{
postRegisterUserPostResp   =  await Get.find<ApiClient>().registerUserPost(headers: {'Content-type': 'application/json','Content-Type': 'application/json',}, requestData: req, );
_handleRegisterUserPostSuccess();
} on PostRegisterUserPostResp catch(e)
{
postRegisterUserPostResp = e;
rethrow;
} } 
/// handles the success response for the API
void _handleRegisterUserPostSuccess() { 

Get.find<PrefUtils>().setStatus(postRegisterUserPostResp.status ?? '');Get.find<PrefUtils>().setMessage(postRegisterUserPostResp.message ?? ''); } 
 }
