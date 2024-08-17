import '/flutter_flow/flutter_flow_util.dart';
import 'transaction_table_widget.dart' show TransactionTableWidget;
import 'package:flutter/material.dart';

class TransactionTableModel extends FlutterFlowModel<TransactionTableWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
