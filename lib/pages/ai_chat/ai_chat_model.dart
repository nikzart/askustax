import '/components/nav_bar_widget.dart';
import '/components/side_nav/side_nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/g_p_t_component/ai_chat_component/ai_chat_component_widget.dart';
import 'ai_chat_widget.dart' show AiChatWidget;
import 'package:flutter/material.dart';

class AiChatModel extends FlutterFlowModel<AiChatWidget> {
  ///  Local state fields for this page.

  int selectedPage = 2;

  ///  State fields for stateful widgets in this page.

  // Model for sideNav component.
  late SideNavModel sideNavModel;
  // Model for aiChat_Component component.
  late AiChatComponentModel aiChatComponentModel;
  // Model for NavBar component.
  late NavBarModel navBarModel;

  @override
  void initState(BuildContext context) {
    sideNavModel = createModel(context, () => SideNavModel());
    aiChatComponentModel = createModel(context, () => AiChatComponentModel());
    navBarModel = createModel(context, () => NavBarModel());
  }

  @override
  void dispose() {
    sideNavModel.dispose();
    aiChatComponentModel.dispose();
    navBarModel.dispose();
  }
}
