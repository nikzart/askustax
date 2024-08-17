import '/components/nav_bar_widget.dart';
import '/components/side_nav/side_nav_widget.dart';
import '/components/transaction_table_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'transactions_widget.dart' show TransactionsWidget;
import 'package:flutter/material.dart';

class TransactionsModel extends FlutterFlowModel<TransactionsWidget> {
  ///  Local state fields for this page.

  int selectedPage = 1;

  ///  State fields for stateful widgets in this page.

  // Model for sideNav component.
  late SideNavModel sideNavModel;
  // Model for transactionTable component.
  late TransactionTableModel transactionTableModel;
  // Model for NavBar component.
  late NavBarModel navBarModel;

  @override
  void initState(BuildContext context) {
    sideNavModel = createModel(context, () => SideNavModel());
    transactionTableModel = createModel(context, () => TransactionTableModel());
    navBarModel = createModel(context, () => NavBarModel());
  }

  @override
  void dispose() {
    sideNavModel.dispose();
    transactionTableModel.dispose();
    navBarModel.dispose();
  }
}
