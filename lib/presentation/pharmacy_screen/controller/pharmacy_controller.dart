import 'package:medtech/core/app_export.dart';import 'package:medtech/presentation/pharmacy_screen/models/pharmacy_model.dart';import 'package:flutter/material.dart';/// A controller class for the PharmacyScreen.
///
/// This class manages the state of the PharmacyScreen, including the
/// current pharmacyModelObj
class PharmacyController extends GetxController {TextEditingController childrenvalueController = TextEditingController();

Rx<PharmacyModel> pharmacyModelObj = PharmacyModel().obs;

@override void onClose() { super.onClose(); childrenvalueController.dispose(); } 
 }
