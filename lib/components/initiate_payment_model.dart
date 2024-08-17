import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'initiate_payment_widget.dart' show InitiatePaymentWidget;
import 'package:flutter/material.dart';

class InitiatePaymentModel extends FlutterFlowModel<InitiatePaymentWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  RecordsRecord? recordsService;
  // Stores action output result for [Backend Call - Read Document] action in Button widget.
  ServicesRecord? serviceDetails;
  // Stores action output result for [Custom Action - initiateRazorpayPayment] action in Button widget.
  String? servicePaymentId;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
