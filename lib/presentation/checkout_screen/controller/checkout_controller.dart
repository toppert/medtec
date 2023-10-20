import 'package:medtech/core/app_export.dart';import 'package:medtech/presentation/checkout_screen/models/checkout_model.dart';/// A controller class for the CheckoutScreen.
///
/// This class manages the state of the CheckoutScreen, including the
/// current checkoutModelObj
class CheckoutController extends GetxController {Rx<CheckoutModel> checkoutModelObj = CheckoutModel().obs;

 }
