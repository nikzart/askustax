import '/components/side_nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/g_p_t_component/ai_chat_component/ai_chat_component_widget.dart';
import 'ai_chat_widget.dart' show AiChatWidget;
import 'package:flutter/material.dart';

class AiChatModel extends FlutterFlowModel<AiChatWidget> {
  ///  Local state fields for this page.

  int selectedPage = 2;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for sideNav component.
  late SideNavModel sideNavModel;
  // Model for aiChat_Component component.
  late AiChatComponentModel aiChatComponentModel;

  @override
  void initState(BuildContext context) {
    sideNavModel = createModel(context, () => SideNavModel());
    aiChatComponentModel = createModel(context, () => AiChatComponentModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    sideNavModel.dispose();
    aiChatComponentModel.dispose();
  }
}
