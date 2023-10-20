import 'package:medtech/core/app_export.dart';
import 'package:medtech/presentation/medications_empty_state_page/models/medications_empty_state_model.dart';

/// A controller class for the MedicationsEmptyStatePage.
///
/// This class manages the state of the MedicationsEmptyStatePage, including the
/// current medicationsEmptyStateModelObj
class MedicationsEmptyStateController extends GetxController {
  MedicationsEmptyStateController(this.medicationsEmptyStateModelObj);

  Rx<MedicationsEmptyStateModel> medicationsEmptyStateModelObj;
}
