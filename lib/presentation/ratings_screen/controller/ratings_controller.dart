import 'package:medtech/core/app_export.dart';import 'package:medtech/presentation/ratings_screen/models/ratings_model.dart';/// A controller class for the RatingsScreen.
///
/// This class manages the state of the RatingsScreen, including the
/// current ratingsModelObj
class RatingsController extends GetxController {Rx<RatingsModel> ratingsModelObj = RatingsModel().obs;

 }
