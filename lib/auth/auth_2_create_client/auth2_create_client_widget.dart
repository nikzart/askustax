import '/components/brand/brand_widget.dart';
import '/components/create_acc_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'auth2_create_client_model.dart';
export 'auth2_create_client_model.dart';

class Auth2CreateClientWidget extends StatefulWidget {
  const Auth2CreateClientWidget({super.key});

  @override
  State<Auth2CreateClientWidget> createState() =>
      _Auth2CreateClientWidgetState();
}

class _Auth2CreateClientWidgetState extends State<Auth2CreateClientWidget> {
  late Auth2CreateClientModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Auth2CreateClientModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                FlutterFlowTheme.of(context).primary,
                FlutterFlowTheme.of(context).tertiary
              ],
              stops: const [0.0, 1.0],
              begin: const AlignmentDirectional(0.87, -1.0),
              end: const AlignmentDirectional(-0.87, 1.0),
            ),
          ),
          alignment: const AlignmentDirectional(0.0, -1.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                wrapWithModel(
                  model: _model.brandModel,
                  updateCallback: () => setState(() {}),
                  child: const BrandWidget(),
                ),
                wrapWithModel(
                  model: _model.createAccModel,
                  updateCallback: () => setState(() {}),
                  child: const CreateAccWidget(
                    authLevel: 0,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
