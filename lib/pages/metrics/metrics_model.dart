import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/components/nav_bar_widget.dart';
import '/components/side_nav/side_nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'metrics_widget.dart' show MetricsWidget;
import 'package:flutter/material.dart';

class MetricsModel extends FlutterFlowModel<MetricsWidget> {
  ///  Local state fields for this page.

  int selectedPage = 1;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in metrics widget.
  int? clientCount;
  // Stores action output result for [Firestore Query - Query a collection] action in metrics widget.
  int? caCount;
  // Stores action output result for [Custom Action - revenueStats] action in metrics widget.
  List<RevenueGraphStruct>? revenueGraph;
  // Stores action output result for [Custom Action - signupStats] action in metrics widget.
  List<SignupsGraphStruct>? signupsGraph;
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
