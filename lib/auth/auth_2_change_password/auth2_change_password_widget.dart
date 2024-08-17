import '/components/brand/brand_widget.dart';
import '/components/update_pass/update_pass_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'auth2_change_password_model.dart';
export 'auth2_change_password_model.dart';

class Auth2ChangePasswordWidget extends StatefulWidget {
  const Auth2ChangePasswordWidget({super.key});

  @override
  State<Auth2ChangePasswordWidget> createState() =>
      _Auth2ChangePasswordWidgetState();
}

class _Auth2ChangePasswordWidgetState extends State<Auth2ChangePasswordWidget> {
  late Auth2ChangePasswordModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Auth2ChangePasswordModel());

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
                  model: _model.updatePassModel,
                  updateCallback: () => setState(() {}),
                  child: const UpdatePassWidget(
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
