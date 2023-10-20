import 'package:medtech/core/app_export.dart';
import 'package:medtech/presentation/cancel_appointment_one_screen/models/cancel_appointment_one_model.dart';

/// A controller class for the CancelAppointmentOneScreen.
///
/// This class manages the state of the CancelAppointmentOneScreen, including the
/// current cancelAppointmentOneModelObj
class CancelAppointmentOneController extends GetxController {
  Rx<CancelAppointmentOneModel> cancelAppointmentOneModelObj =
      CancelAppointmentOneModel().obs;
}
