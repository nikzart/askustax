import '/components/nav_bar_widget.dart';
import '/components/side_nav/side_nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'chat2_main_widget.dart' show Chat2MainWidget;
import 'package:flutter/material.dart';

class Chat2MainModel extends FlutterFlowModel<Chat2MainWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for sideNav component.
  late SideNavModel sideNavModel;
  // Model for NavBar component.
  late NavBarModel navBarModel;

  @override
  void initState(BuildContext context) {
    sideNavModel = createModel(context, () => SideNavModel());
    navBarModel = createModel(context, () => NavBarModel());
  }

  @override
  void dispose() {
    sideNavModel.dispose();
    navBarModel.dispose();
  }
}
