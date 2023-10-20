import 'package:medtech/core/app_export.dart';import 'package:medtech/presentation/order_details_one_screen/models/order_details_one_model.dart';/// A controller class for the OrderDetailsOneScreen.
///
/// This class manages the state of the OrderDetailsOneScreen, including the
/// current orderDetailsOneModelObj
class OrderDetailsOneController extends GetxController {Rx<OrderDetailsOneModel> orderDetailsOneModelObj = OrderDetailsOneModel().obs;

 }
