import 'package:medtech/core/app_export.dart';
import 'package:medtech/presentation/upload_document_screen/models/upload_document_model.dart';

/// A controller class for the UploadDocumentScreen.
///
/// This class manages the state of the UploadDocumentScreen, including the
/// current uploadDocumentModelObj
class UploadDocumentController extends GetxController {
  Rx<UploadDocumentModel> uploadDocumentModelObj = UploadDocumentModel().obs;
}
