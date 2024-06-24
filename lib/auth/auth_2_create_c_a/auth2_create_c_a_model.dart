import '/components/brand_widget.dart';
import '/components/create_acc_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'auth2_create_c_a_widget.dart' show Auth2CreateCAWidget;
import 'package:flutter/material.dart';

class Auth2CreateCAModel extends FlutterFlowModel<Auth2CreateCAWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for brand component.
  late BrandModel brandModel;
  // Model for createAcc component.
  late CreateAccModel createAccModel;

  @override
  void initState(BuildContext context) {
    brandModel = createModel(context, () => BrandModel());
    createAccModel = createModel(context, () => CreateAccModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    brandModel.dispose();
    createAccModel.dispose();
  }
}
