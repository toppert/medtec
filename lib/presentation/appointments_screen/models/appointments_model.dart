import 'package:get/get.dart';import 'appointments_item_model.dart';/// This class defines the variables used in the [appointments_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AppointmentsModel {Rx<List<AppointmentsItemModel>> appointmentsItemList = Rx(List.generate(4,(index) => AppointmentsItemModel()));

 }