import '/components/brand/brand_widget.dart';
import '/components/create_acc_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'auth2_create_client_widget.dart' show Auth2CreateClientWidget;
import 'package:flutter/material.dart';

class Auth2CreateClientModel extends FlutterFlowModel<Auth2CreateClientWidget> {
  ///  State fields for stateful widgets in this page.

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
    brandModel.dispose();
    createAccModel.dispose();
  }
}
