import 'package:medtech/core/app_export.dart';import 'package:medtech/presentation/wallet_screen/models/wallet_model.dart';/// A controller class for the WalletScreen.
///
/// This class manages the state of the WalletScreen, including the
/// current walletModelObj
class WalletController extends GetxController {Rx<WalletModel> walletModelObj = WalletModel().obs;

 }
