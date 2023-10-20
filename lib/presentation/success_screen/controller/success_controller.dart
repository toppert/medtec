import 'package:medtech/core/app_export.dart';import 'package:medtech/presentation/success_screen/models/success_model.dart';/// A controller class for the SuccessScreen.
///
/// This class manages the state of the SuccessScreen, including the
/// current successModelObj
class SuccessController extends GetxController {Rx<SuccessModel> successModelObj = SuccessModel().obs;

 }
