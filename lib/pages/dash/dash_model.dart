import '/components/ca_users_widget.dart';
import '/components/service_dash_widget.dart';
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
  // Model for caUsers component.
  late CaUsersModel caUsersModel;
  // Model for serviceDash component.
  late ServiceDashModel serviceDashModel;

  @override
  void initState(BuildContext context) {
    sideNavModel = createModel(context, () => SideNavModel());
    caUsersModel = createModel(context, () => CaUsersModel());
    serviceDashModel = createModel(context, () => ServiceDashModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    sideNavModel.dispose();
    caUsersModel.dispose();
    serviceDashModel.dispose();
  }
}
