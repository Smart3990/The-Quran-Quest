import '/flutter_flow/flutter_flow_util.dart';
import 'edit_profile_widget.dart' show EditProfileWidget;
import 'package:flutter/material.dart';

class EditProfileModel extends FlutterFlowModel<EditProfileWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for User_name widget.
  FocusNode? userNameFocusNode1;
  TextEditingController? userNameTextController1;
  String? Function(BuildContext, String?)? userNameTextController1Validator;
  // State field(s) for User_name widget.
  FocusNode? userNameFocusNode2;
  TextEditingController? userNameTextController2;
  String? Function(BuildContext, String?)? userNameTextController2Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    userNameFocusNode1?.dispose();
    userNameTextController1?.dispose();

    userNameFocusNode2?.dispose();
    userNameTextController2?.dispose();
  }
}
