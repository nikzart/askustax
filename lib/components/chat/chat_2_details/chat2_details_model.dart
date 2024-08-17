import '/backend/backend.dart';
import '/components/chat/chat_thread_component/chat_thread_component_widget.dart';
import '/components/nav_bar_widget.dart';
import '/components/side_nav/side_nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import 'chat2_details_widget.dart' show Chat2DetailsWidget;
import 'package:flutter/material.dart';

class Chat2DetailsModel extends FlutterFlowModel<Chat2DetailsWidget> {
  ///  Local state fields for this page.

  List<String> uploadedImages = [];
  void addToUploadedImages(String item) => uploadedImages.add(item);
  void removeFromUploadedImages(String item) => uploadedImages.remove(item);
  void removeAtIndexFromUploadedImages(int index) =>
      uploadedImages.removeAt(index);
  void insertAtIndexInUploadedImages(int index, String item) =>
      uploadedImages.insert(index, item);
  void updateUploadedImagesAtIndex(int index, Function(String) updateFn) =>
      uploadedImages[index] = updateFn(uploadedImages[index]);

  List<DocumentReference> lastMessageSeenBy = [];
  void addToLastMessageSeenBy(DocumentReference item) =>
      lastMessageSeenBy.add(item);
  void removeFromLastMessageSeenBy(DocumentReference item) =>
      lastMessageSeenBy.remove(item);
  void removeAtIndexFromLastMessageSeenBy(int index) =>
      lastMessageSeenBy.removeAt(index);
  void insertAtIndexInLastMessageSeenBy(int index, DocumentReference item) =>
      lastMessageSeenBy.insert(index, item);
  void updateLastMessageSeenByAtIndex(
          int index, Function(DocumentReference) updateFn) =>
      lastMessageSeenBy[index] = updateFn(lastMessageSeenBy[index]);

  bool chatDeclined = false;

  ///  State fields for stateful widgets in this page.

  InstantTimer? chatCheck;
  // Stores action output result for [Backend Call - Read Document] action in chat_2_Details widget.
  ChatsRecord? chatRef;
  // Model for sideNav component.
  late SideNavModel sideNavModel;
  // Model for chat_ThreadComponent component.
  late ChatThreadComponentModel chatThreadComponentModel;
  // Model for NavBar component.
  late NavBarModel navBarModel;

  @override
  void initState(BuildContext context) {
    sideNavModel = createModel(context, () => SideNavModel());
    chatThreadComponentModel =
        createModel(context, () => ChatThreadComponentModel());
    navBarModel = createModel(context, () => NavBarModel());
  }

  @override
  void dispose() {
    chatCheck?.cancel();
    sideNavModel.dispose();
    chatThreadComponentModel.dispose();
    navBarModel.dispose();
  }
}
