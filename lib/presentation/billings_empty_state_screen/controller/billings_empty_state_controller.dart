import 'package:medtech/core/app_export.dart';
import 'package:medtech/presentation/billings_empty_state_screen/models/billings_empty_state_model.dart';

/// A controller class for the BillingsEmptyStateScreen.
///
/// This class manages the state of the BillingsEmptyStateScreen, including the
/// current billingsEmptyStateModelObj
class BillingsEmptyStateController extends GetxController {
  Rx<BillingsEmptyStateModel> billingsEmptyStateModelObj =
      BillingsEmptyStateModel().obs;
}
