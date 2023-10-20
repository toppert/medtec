import 'package:medtech/core/app_export.dart';import 'package:medtech/presentation/billings_screen/models/billings_model.dart';/// A controller class for the BillingsScreen.
///
/// This class manages the state of the BillingsScreen, including the
/// current billingsModelObj
class BillingsController extends GetxController {Rx<BillingsModel> billingsModelObj = BillingsModel().obs;

 }
