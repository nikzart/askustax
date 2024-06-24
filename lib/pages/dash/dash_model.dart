import '/components/side_nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dash_widget.dart' show DashWidget;
import 'package:flutter/material.dart';

class DashModel extends FlutterFlowModel<DashWidget> {
  ///  Local state fields for this page.

  int selectedPage = 1;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for sideNav component.
  late SideNavModel sideNavModel;

  @override
  void initState(BuildContext context) {
    sideNavModel = createModel(context, () => SideNavModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    sideNavModel.dispose();
  }
}
