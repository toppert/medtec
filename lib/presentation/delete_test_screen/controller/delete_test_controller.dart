import 'package:medtech/core/app_export.dart';
import 'package:medtech/presentation/delete_test_screen/models/delete_test_model.dart';

/// A controller class for the DeleteTestScreen.
///
/// This class manages the state of the DeleteTestScreen, including the
/// current deleteTestModelObj
class DeleteTestController extends GetxController {
  Rx<DeleteTestModel> deleteTestModelObj = DeleteTestModel().obs;
}
