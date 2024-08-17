import '/flutter_flow/flutter_flow_util.dart';
import 'update_pass_widget.dart' show UpdatePassWidget;
import 'package:flutter/material.dart';

class UpdatePassModel extends FlutterFlowModel<UpdatePassWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for currentPassword widget.
  FocusNode? currentPasswordFocusNode;
  TextEditingController? currentPasswordTextController;
  late bool currentPasswordVisibility;
  String? Function(BuildContext, String?)?
      currentPasswordTextControllerValidator;
  // State field(s) for newPassword widget.
  FocusNode? newPasswordFocusNode;
  TextEditingController? newPasswordTextController;
  late bool newPasswordVisibility;
  String? Function(BuildContext, String?)? newPasswordTextControllerValidator;
  // State field(s) for confirmNewPassword widget.
  FocusNode? confirmNewPasswordFocusNode;
  TextEditingController? confirmNewPasswordTextController;
  late bool confirmNewPasswordVisibility;
  String? Function(BuildContext, String?)?
      confirmNewPasswordTextControllerValidator;
  // Stores action output result for [Custom Action - changePassword] action in Button widget.
  String? passChangeState;

  @override
  void initState(BuildContext context) {
    currentPasswordVisibility = false;
    newPasswordVisibility = false;
    confirmNewPasswordVisibility = false;
  }

  @override
  void dispose() {
    currentPasswordFocusNode?.dispose();
    currentPasswordTextController?.dispose();

    newPasswordFocusNode?.dispose();
    newPasswordTextController?.dispose();

    confirmNewPasswordFocusNode?.dispose();
    confirmNewPasswordTextController?.dispose();
  }
}
