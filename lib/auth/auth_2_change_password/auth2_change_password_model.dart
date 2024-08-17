import '/components/brand/brand_widget.dart';
import '/components/update_pass/update_pass_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'auth2_change_password_widget.dart' show Auth2ChangePasswordWidget;
import 'package:flutter/material.dart';

class Auth2ChangePasswordModel
    extends FlutterFlowModel<Auth2ChangePasswordWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for brand component.
  late BrandModel brandModel;
  // Model for updatePass component.
  late UpdatePassModel updatePassModel;

  @override
  void initState(BuildContext context) {
    brandModel = createModel(context, () => BrandModel());
    updatePassModel = createModel(context, () => UpdatePassModel());
  }

  @override
  void dispose() {
    brandModel.dispose();
    updatePassModel.dispose();
  }
}
