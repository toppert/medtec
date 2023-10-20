import 'package:medtech/core/app_export.dart';import 'package:medtech/presentation/view_consultation_screen/models/view_consultation_model.dart';/// A controller class for the ViewConsultationScreen.
///
/// This class manages the state of the ViewConsultationScreen, including the
/// current viewConsultationModelObj
class ViewConsultationController extends GetxController {Rx<ViewConsultationModel> viewConsultationModelObj = ViewConsultationModel().obs;

 }
