import '/components/ca_users/ca_users_widget.dart';
import '/components/nav_bar_widget.dart';
import '/components/service_dash/service_dash_widget.dart';
import '/components/side_nav/side_nav_widget.dart';
import '/components/users/users_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dash_widget.dart' show DashWidget;
import 'package:flutter/material.dart';

class DashModel extends FlutterFlowModel<DashWidget> {
  ///  Local state fields for this page.

  int selectedPage = 1;

  ///  State fields for stateful widgets in this page.

  // Model for sideNav component.
  late SideNavModel sideNavModel;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Model for caUsers component.
  late CaUsersModel caUsersModel;
  // Model for Users component.
  late UsersModel usersModel;
  // Model for serviceDash component.
  late ServiceDashModel serviceDashModel;
  // Model for NavBar component.
  late NavBarModel navBarModel;

  @override
  void initState(BuildContext context) {
    sideNavModel = createModel(context, () => SideNavModel());
    caUsersModel = createModel(context, () => CaUsersModel());
    usersModel = createModel(context, () => UsersModel());
    serviceDashModel = createModel(context, () => ServiceDashModel());
    navBarModel = createModel(context, () => NavBarModel());
  }

  @override
  void dispose() {
    sideNavModel.dispose();
    tabBarController?.dispose();
    caUsersModel.dispose();
    usersModel.dispose();
    serviceDashModel.dispose();
    navBarModel.dispose();
  }
}
