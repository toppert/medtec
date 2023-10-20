import 'package:medtech/core/app_export.dart';
import 'package:medtech/presentation/view_appointment_screen/models/view_appointment_model.dart';

/// A controller class for the ViewAppointmentScreen.
///
/// This class manages the state of the ViewAppointmentScreen, including the
/// current viewAppointmentModelObj
class ViewAppointmentController extends GetxController {
  Rx<ViewAppointmentModel> viewAppointmentModelObj = ViewAppointmentModel().obs;
}
