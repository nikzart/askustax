import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'service_edit_widget.dart' show ServiceEditWidget;
import 'package:flutter/material.dart';

class ServiceEditModel extends FlutterFlowModel<ServiceEditWidget> {
  ///  Local state fields for this component.

  ServicesRecord? service;

  ///  State fields for stateful widgets in this component.

  // State field(s) for serviceName widget.
  FocusNode? serviceNameFocusNode;
  TextEditingController? serviceNameTextController;
  String? Function(BuildContext, String?)? serviceNameTextControllerValidator;
  // State field(s) for serviceDesc widget.
  FocusNode? serviceDescFocusNode;
  TextEditingController? serviceDescTextController;
  String? Function(BuildContext, String?)? serviceDescTextControllerValidator;
  // State field(s) for servicePrice widget.
  FocusNode? servicePriceFocusNode;
  TextEditingController? servicePriceTextController;
  String? Function(BuildContext, String?)? servicePriceTextControllerValidator;
  // State field(s) for serviceIsEnabled widget.
  bool? serviceIsEnabledValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    serviceNameFocusNode?.dispose();
    serviceNameTextController?.dispose();

    serviceDescFocusNode?.dispose();
    serviceDescTextController?.dispose();

    servicePriceFocusNode?.dispose();
    servicePriceTextController?.dispose();
  }
}
