import 'package:medtech/core/app_export.dart';
import 'package:medtech/presentation/sign_out_screen/models/sign_out_model.dart';

/// A controller class for the SignOutScreen.
///
/// This class manages the state of the SignOutScreen, including the
/// current signOutModelObj
class SignOutController extends GetxController {
  Rx<SignOutModel> signOutModelObj = SignOutModel().obs;
}
