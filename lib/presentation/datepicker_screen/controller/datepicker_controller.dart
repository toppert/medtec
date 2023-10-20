import 'package:medtech/core/app_export.dart';import 'package:medtech/presentation/datepicker_screen/models/datepicker_model.dart';/// A controller class for the DatepickerScreen.
///
/// This class manages the state of the DatepickerScreen, including the
/// current datepickerModelObj
class DatepickerController extends GetxController {Rx<DatepickerModel> datepickerModelObj = DatepickerModel().obs;

 }
