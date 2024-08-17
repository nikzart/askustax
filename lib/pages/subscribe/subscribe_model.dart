import '/backend/backend.dart';
import '/components/nav_bar_widget.dart';
import '/components/side_nav/side_nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'subscribe_widget.dart' show SubscribeWidget;
import 'package:flutter/material.dart';

class SubscribeModel extends FlutterFlowModel<SubscribeWidget> {
  ///  Local state fields for this page.

  int selectedPage = 2;

  ///  State fields for stateful widgets in this page.

  // Model for sideNav component.
  late SideNavModel sideNavModel;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  RecordsRecord? recordsRegular;
  // Stores action output result for [Custom Action - initiateRazorpayPayment] action in Button widget.
  String? regularPlanPaymentId;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  RecordsRecord? recordsPremium;
  // Stores action output result for [Custom Action - initiateRazorpayPayment] action in Button widget.
  String? premiumPlanPaymentId;
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
