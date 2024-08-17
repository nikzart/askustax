import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'chat_initiate_transaction_widget.dart'
    show ChatInitiateTransactionWidget;
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class ChatInitiateTransactionModel
    extends FlutterFlowModel<ChatInitiateTransactionWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for ListView widget.

  PagingController<DocumentSnapshot?, ServicesRecord>? listViewPagingController;
  Query? listViewPagingQuery;
  List<StreamSubscription?> listViewStreamSubscriptions = [];

  // Stores action output result for [Backend Call - Read Document] action in Container widget.
  UsersRecord? userdetails;
  // Stores action output result for [Backend Call - Create Document] action in Container widget.
  TransactionsRecord? currTransaction;
  // Stores action output result for [Backend Call - Create Document] action in Container widget.
  ChatMessagesRecord? newChat;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    for (var s in listViewStreamSubscriptions) {
      s?.cancel();
    }
    listViewPagingController?.dispose();
  }

  /// Additional helper methods.
  PagingController<DocumentSnapshot?, ServicesRecord> setListViewController(
    Query query, {
    DocumentReference<Object?>? parent,
  }) {
    listViewPagingController ??= _createListViewController(query, parent);
    if (listViewPagingQuery != query) {
      listViewPagingQuery = query;
      listViewPagingController?.refresh();
    }
    return listViewPagingController!;
  }

  PagingController<DocumentSnapshot?, ServicesRecord> _createListViewController(
    Query query,
    DocumentReference<Object?>? parent,
  ) {
    final controller =
        PagingController<DocumentSnapshot?, ServicesRecord>(firstPageKey: null);
    return controller
      ..addPageRequestListener(
        (nextPageMarker) => queryServicesRecordPage(
          queryBuilder: (_) => listViewPagingQuery ??= query,
          nextPageMarker: nextPageMarker,
          streamSubscriptions: listViewStreamSubscriptions,
          controller: controller,
          pageSize: 10,
          isStream: true,
        ),
      );
  }
}
