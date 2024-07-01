import '/flutter_flow/flutter_flow_util.dart';
import 'service_edit_widget.dart' show ServiceEditWidget;
import 'package:flutter/material.dart';

class ServiceEditModel extends FlutterFlowModel<ServiceEditWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for PhoneNumber widget.
  FocusNode? phoneNumberFocusNode1;
  TextEditingController? phoneNumberTextController1;
  String? Function(BuildContext, String?)? phoneNumberTextController1Validator;
  // State field(s) for PhoneNumber widget.
  FocusNode? phoneNumberFocusNode2;
  TextEditingController? phoneNumberTextController2;
  String? Function(BuildContext, String?)? phoneNumberTextController2Validator;
  // State field(s) for PhoneNumber widget.
  FocusNode? phoneNumberFocusNode3;
  TextEditingController? phoneNumberTextController3;
  String? Function(BuildContext, String?)? phoneNumberTextController3Validator;
  // State field(s) for Switch widget.
  bool? switchValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    phoneNumberFocusNode1?.dispose();
    phoneNumberTextController1?.dispose();

    phoneNumberFocusNode2?.dispose();
    phoneNumberTextController2?.dispose();

    phoneNumberFocusNode3?.dispose();
    phoneNumberTextController3?.dispose();
  }
}
