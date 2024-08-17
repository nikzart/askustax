import '/backend/backend.dart';
import '/components/initiate_payment_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/request_manager.dart';

import 'chat_thread_widget.dart' show ChatThreadWidget;
import 'package:flutter/material.dart';

class ChatThreadModel extends FlutterFlowModel<ChatThreadWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for initiatePayment component.
  late InitiatePaymentModel initiatePaymentModel1;
  // Model for initiatePayment component.
  late InitiatePaymentModel initiatePaymentModel2;

  /// Query cache managers for this widget.

  final _chatUserManager = FutureRequestManager<UsersRecord>();
  Future<UsersRecord> chatUser({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<UsersRecord> Function() requestFn,
  }) =>
      _chatUserManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearChatUserCache() => _chatUserManager.clear();
  void clearChatUserCacheKey(String? uniqueKey) =>
      _chatUserManager.clearRequest(uniqueKey);

  @override
  void initState(BuildContext context) {
    initiatePaymentModel1 = createModel(context, () => InitiatePaymentModel());
    initiatePaymentModel2 = createModel(context, () => InitiatePaymentModel());
  }

  @override
  void dispose() {
    initiatePaymentModel1.dispose();
    initiatePaymentModel2.dispose();

    /// Dispose query cache managers for this widget.

    clearChatUserCache();
  }
}
