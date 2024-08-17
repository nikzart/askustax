import '/auth/firebase_auth/auth_util.dart';
import '/components/ca_users/ca_users_widget.dart';
import '/components/nav_bar_widget.dart';
import '/components/service_dash/service_dash_widget.dart';
import '/components/side_nav/side_nav_widget.dart';
import '/components/users/users_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dash_model.dart';
export 'dash_model.dart';

class DashWidget extends StatefulWidget {
  const DashWidget({super.key});

  @override
  State<DashWidget> createState() => _DashWidgetState();
}

class _DashWidgetState extends State<DashWidget> with TickerProviderStateMixin {
  late DashModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DashModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 3,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
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
                        selectedNav: 1,
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
                        height: double.infinity,
                        constraints: const BoxConstraints(
                          maxWidth: 1170.0,
                        ),
                        decoration: const BoxDecoration(),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 20.0, 0.0, 0.0),
                                child: Column(
                                  children: [
                                    Align(
                                      alignment: const Alignment(0.0, 0),
                                      child: TabBar(
                                        labelColor: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        unselectedLabelColor:
                                            FlutterFlowTheme.of(context)
                                                .secondaryText,
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .titleMediumFamily,
                                              letterSpacing: 0.0,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMediumFamily),
                                            ),
                                        unselectedLabelStyle: const TextStyle(),
                                        indicatorColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        padding: const EdgeInsets.all(4.0),
                                        tabs: const [
                                          Tab(
                                            text: 'CA Users',
                                          ),
                                          Tab(
                                            text: 'Users',
                                          ),
                                          Tab(
                                            text: 'Services',
                                          ),
                                        ],
                                        controller: _model.tabBarController,
                                        onTap: (i) async {
                                          [
                                            () async {},
                                            () async {},
                                            () async {}
                                          ][i]();
                                        },
                                      ),
                                    ),
                                    Expanded(
                                      child: TabBarView(
                                        controller: _model.tabBarController,
                                        children: [
                                          wrapWithModel(
                                            model: _model.caUsersModel,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child: const CaUsersWidget(),
                                          ),
                                          wrapWithModel(
                                            model: _model.usersModel,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child: const UsersWidget(),
                                          ),
                                          wrapWithModel(
                                            model: _model.serviceDashModel,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child: const ServiceDashWidget(),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
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
