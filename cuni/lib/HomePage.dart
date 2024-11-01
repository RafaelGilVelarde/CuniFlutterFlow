import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());
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
        backgroundColor: Color(0xFF806FAE),
        body: Stack(
          children: [
            Padding(
              padding: EdgeInsets.all(4),
              child: Container(
                width: 404,
                height: 665,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                ),
                child: Align(
                  alignment: AlignmentDirectional(0, 1),
                  child: Stack(
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0.04, -0.7),
                        child: Padding(
                          padding: EdgeInsets.all(8),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              'assets/images/Group_100logo.png',
                              width: 156,
                              height: 81,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.08, 0.02),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            'assets/images/ccccc.png',
                            width: 218,
                            height: 475,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.11, 0.28),
              child: Text(
                '¡Prepararte nunca fue tan fácil!',
                style: FlutterFlowTheme.of(context).titleMedium.override(
                  fontFamily: 'Readex Pro',
                  fontSize: 24,
                  letterSpacing: 0.0,
                  shadows: [
                    Shadow(
                      color: FlutterFlowTheme.of(context).secondaryText,
                      offset: Offset(2.0, 2.0),
                      blurRadius: 2.0,
                    )
                  ],
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.01, 0.45),
              child: FFButtonWidget(
                onPressed: () async {
                  context.pushNamed('LOGIN');
                },
                text: 'Empezar',
                options: FFButtonOptions(
                  width: 200,
                  height: 40,
                  padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                  iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                  color: Color(0xFF473870),
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Readex Pro',
                        color: Colors.white,
                        fontSize: 20,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w500,
                      ),
                  elevation: 3,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(28),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.5, 0.65),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.pushNamed('LOGIN');
                },
                child: Text(
                  'Ingresar',
                  style: FlutterFlowTheme.of(context).titleMedium.override(
                        fontFamily: 'poppins',
                        letterSpacing: 0.0,
                        decoration: TextDecoration.underline,
                        useGoogleFonts: false,
                      ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.55, 0.65),
              child: Text(
                'Ya tengo una cuenta,',
                style: FlutterFlowTheme.of(context).titleMedium.override(
                      fontFamily: 'poppins',
                      fontSize: 18,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w300,
                      useGoogleFonts: false,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
