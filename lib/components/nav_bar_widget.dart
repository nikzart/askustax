import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/service_selector/service_selector_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'nav_bar_model.dart';
export 'nav_bar_model.dart';

class NavBarWidget extends StatefulWidget {
  const NavBarWidget({super.key});

  @override
  State<NavBarWidget> createState() => _NavBarWidgetState();
}

class _NavBarWidgetState extends State<NavBarWidget> {
  late NavBarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavBarModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: responsiveVisibility(
        context: context,
        tabletLandscape: false,
        desktop: false,
      ),
      child: Container(
        width: double.infinity,
        height: 90.0,
        decoration: const BoxDecoration(
          color: Color(0x00EEEEEE),
        ),
        child: Stack(
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Material(
                  color: Colors.transparent,
                  elevation: 0.0,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(0.0),
                      bottomRight: Radius.circular(0.0),
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                    ),
                  ),
                  child: Container(
                    width: double.infinity,
                    height: 80.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 10.0,
                          color: Color(0x1A57636C),
                          offset: Offset(
                            0.0,
                            -10.0,
                          ),
                          spreadRadius: 0.1,
                        )
                      ],
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(0.0),
                        bottomRight: Radius.circular(0.0),
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                if (valueOrDefault<bool>(currentUserDocument?.isAdmin, false) ==
                    true)
                  AuthUserStreamWidget(
                    builder: (context) => FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30.0,
                      borderWidth: 1.0,
                      buttonSize: 50.0,
                      icon: const Icon(
                        Icons.space_dashboard_rounded,
                        color: Color(0xFF9299A1),
                        size: 30.0,
                      ),
                      onPressed: () async {
                        context.pushNamed('dash');
                      },
                    ),
                  ),
                if (valueOrDefault<bool>(currentUserDocument?.isAdmin, false) ==
                    true)
                  AuthUserStreamWidget(
                    builder: (context) => FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30.0,
                      borderWidth: 1.0,
                      buttonSize: 50.0,
                      icon: const Icon(
                        Icons.analytics_outlined,
                        color: Color(0xFF9299A1),
                        size: 35.0,
                      ),
                      onPressed: () async {
                        context.pushNamed('metrics');
                      },
                    ),
                  ),
                if (valueOrDefault<bool>(currentUserDocument?.isCA, false) ==
                    true)
                  AuthUserStreamWidget(
                    builder: (context) => FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30.0,
                      borderWidth: 1.0,
                      buttonSize: 50.0,
                      icon: const Icon(
                        Icons.notifications_rounded,
                        color: Color(0xFF9299A1),
                        size: 35.0,
                      ),
                      onPressed: () async {
                        context.pushNamed('chat_2_main');
                      },
                    ),
                  ),
                if (valueOrDefault<bool>(
                        currentUserDocument?.isClient, false) ==
                    true)
                  AuthUserStreamWidget(
                    builder: (context) => FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30.0,
                      borderWidth: 1.0,
                      buttonSize: 50.0,
                      icon: const Icon(
                        Icons.hail,
                        color: Color(0xFF9299A1),
                        size: 35.0,
                      ),
                      onPressed: () async {
                        if (valueOrDefault<bool>(
                                currentUserDocument?.inActiveChat, false) ==
                            true) {
                          _model.activeChat = await ChatsRecord.getDocumentOnce(
                              currentUserDocument!.activeChat!);

                          context.pushNamed(
                            'chat_2_Details',
                            queryParameters: {
                              'chatRef': serializeParam(
                                _model.activeChat,
                                ParamType.Document,
                              ),
                            }.withoutNulls,
                            extra: <String, dynamic>{
                              'chatRef': _model.activeChat,
                            },
                          );
                        } else {
                          await showModalBottomSheet(
                            isScrollControlled: true,
                            backgroundColor: Colors.transparent,
                            enableDrag: false,
                            context: context,
                            builder: (context) {
                              return Padding(
                                padding: MediaQuery.viewInsetsOf(context),
                                child: const ServiceSelectorWidget(),
                              );
                            },
                          ).then((value) => safeSetState(() {}));
                        }

                        setState(() {});
                      },
                    ),
                  ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                      child: FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 25.0,
                        borderWidth: 1.0,
                        buttonSize: 60.0,
                        fillColor: FlutterFlowTheme.of(context).primary,
                        icon: const Icon(
                          FFIcons.kblueProfessionalVirtualAssistantLogo1,
                          color: Colors.white,
                          size: 30.0,
                        ),
                        onPressed: () async {
                          context.pushNamed('ai_chat');
                        },
                      ),
                    ),
                  ],
                ),
                if (valueOrDefault<bool>(currentUserDocument?.isAdmin, false) ==
                    true)
                  AuthUserStreamWidget(
                    builder: (context) => FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30.0,
                      borderWidth: 1.0,
                      buttonSize: 50.0,
                      icon: const FaIcon(
                        FontAwesomeIcons.exchangeAlt,
                        color: Color(0xFF9299A1),
                        size: 24.0,
                      ),
                      onPressed: () async {
                        context.pushNamed('transactions');
                      },
                    ),
                  ),
                FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 30.0,
                  borderWidth: 1.0,
                  buttonSize: 50.0,
                  icon: const FaIcon(
                    FontAwesomeIcons.userCog,
                    color: Color(0xFF9299A1),
                    size: 24.0,
                  ),
                  onPressed: () async {
                    context.pushNamed('settings');
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
