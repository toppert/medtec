import 'package:medtech/core/app_export.dart';import 'package:medtech/presentation/scw_community_screen/models/scw_community_model.dart';/// A controller class for the ScwCommunityScreen.
///
/// This class manages the state of the ScwCommunityScreen, including the
/// current scwCommunityModelObj
class ScwCommunityController extends GetxController {Rx<ScwCommunityModel> scwCommunityModelObj = ScwCommunityModel().obs;

 }
