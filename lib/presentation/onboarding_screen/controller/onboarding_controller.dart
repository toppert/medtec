import 'package:medtech/core/app_export.dart';import 'package:medtech/presentation/onboarding_screen/models/onboarding_model.dart';/// A controller class for the OnboardingScreen.
///
/// This class manages the state of the OnboardingScreen, including the
/// current onboardingModelObj
class OnboardingController extends GetxController {Rx<OnboardingModel> onboardingModelObj = OnboardingModel().obs;

 }
