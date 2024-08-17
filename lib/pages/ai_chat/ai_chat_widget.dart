import '/auth/firebase_auth/auth_util.dart';
import '/components/nav_bar_widget.dart';
import '/components/side_nav/side_nav_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/g_p_t_component/ai_chat_component/ai_chat_component_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'ai_chat_model.dart';
export 'ai_chat_model.dart';

class AiChatWidget extends StatefulWidget {
  const AiChatWidget({super.key});

  @override
  State<AiChatWidget> createState() => _AiChatWidgetState();
}

class _AiChatWidgetState extends State<AiChatWidget> {
  late AiChatModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AiChatModel());

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
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  AuthUserStreamWidget(
                    builder: (context) => wrapWithModel(
                      model: _model.sideNavModel,
                      updateCallback: () => setState(() {}),
                      child: SideNavWidget(
                        selectedNav: 2,
                        notifCount:
                            valueOrDefault(currentUserDocument?.notiCount, 0),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 8,
                    child: Align(
                      alignment: const AlignmentDirectional(0.0, -1.0),
                      child: Container(
                        width: double.infinity,
                        constraints: const BoxConstraints(
                          maxWidth: 1170.0,
                        ),
                        decoration: const BoxDecoration(),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                if (responsiveVisibility(
                                  context: context,
                                  phone: false,
                                  tablet: false,
                                ))
                                  Container(
                                    width: double.infinity,
                                    height: 24.0,
                                    decoration: const BoxDecoration(),
                                  ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      16.0, 16.0, 0.0, 4.0),
                                  child: Text(
                                    'CA Assist Chat',
                                    style: FlutterFlowTheme.of(context)
                                        .headlineMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .headlineMediumFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .headlineMediumFamily),
                                        ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    'chat with our advance ai model',
                                    style: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .labelMediumFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .labelMediumFamily),
                                        ),
                                  ),
                                ),
                              ].addToEnd(const SizedBox(height: 30.0)),
                            ),
                            Expanded(
                              child: wrapWithModel(
                                model: _model.aiChatComponentModel,
                                updateCallback: () => setState(() {}),
                                child: const AiChatComponentWidget(),
                              ),
                            ),
                          ].addToEnd(const SizedBox(height: 90.0)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 1.0),
                child: wrapWithModel(
                  model: _model.navBarModel,
                  updateCallback: () => setState(() {}),
                  child: const NavBarWidget(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
