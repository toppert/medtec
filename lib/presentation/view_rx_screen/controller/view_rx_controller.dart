import 'package:medtech/core/app_export.dart';import 'package:medtech/presentation/view_rx_screen/models/view_rx_model.dart';/// A controller class for the ViewRxScreen.
///
/// This class manages the state of the ViewRxScreen, including the
/// current viewRxModelObj
class ViewRxController extends GetxController {Rx<ViewRxModel> viewRxModelObj = ViewRxModel().obs;

 }
