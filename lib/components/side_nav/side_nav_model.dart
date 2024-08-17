import '/backend/backend.dart';
import '/components/credits/credits_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'side_nav_widget.dart' show SideNavWidget;
import 'package:flutter/material.dart';

class SideNavModel extends FlutterFlowModel<SideNavWidget> {
  ///  Local state fields for this component.

  int? selectedNav;

  ///  State fields for stateful widgets in this component.

  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered1 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered2 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered3 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered4 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered5 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered6 = false;
  // Stores action output result for [Backend Call - Read Document] action in contentView_1 widget.
  ChatsRecord? activeChat;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered7 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered8 = false;
  // Model for credits component.
  late CreditsModel creditsModel;

  @override
  void initState(BuildContext context) {
    creditsModel = createModel(context, () => CreditsModel());
  }

  @override
  void dispose() {
    creditsModel.dispose();
  }
}
