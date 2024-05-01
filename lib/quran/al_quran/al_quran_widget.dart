import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'al_quran_model.dart';
export 'al_quran_model.dart';

class AlQuranWidget extends StatefulWidget {
  const AlQuranWidget({super.key});

  @override
  State<AlQuranWidget> createState() => _AlQuranWidgetState();
}

class _AlQuranWidgetState extends State<AlQuranWidget>
    with TickerProviderStateMixin {
  late AlQuranModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AlQuranModel());

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: const Offset(3.0, 3.0),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
    });

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
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          body: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 140.0,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      FlutterFlowTheme.of(context).primary,
                      FlutterFlowTheme.of(context).error,
                      const Color(0xFFF4C6B2),
                      const Color(0xFF80249C)
                    ],
                    stops: const [0.0, 1.0, 1.0, 1.0],
                    begin: const AlignmentDirectional(-1.0, -0.87),
                    end: const AlignmentDirectional(1.0, 0.87),
                  ),
                ),
                child: Stack(
                  children: [
                    Container(
                      width: 100.0,
                      height: 200.0,
                      decoration: const BoxDecoration(),
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Align(
                        alignment: const AlignmentDirectional(-1.0, 1.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 0.0, 24.0),
                          child: FlutterFlowIconButton(
                            borderColor: FlutterFlowTheme.of(context).accent4,
                            borderRadius: 12.0,
                            borderWidth: 1.0,
                            buttonSize: 40.0,
                            fillColor: FlutterFlowTheme.of(context).accent4,
                            icon: Icon(
                              Icons.arrow_back_rounded,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 24.0,
                            ),
                            onPressed: () async {
                              context.goNamed('Homepage');
                            },
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0.0, 1.0),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 25.0),
                        child: Text(
                          'Mus\'hafs',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Gentium Book Plus',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    fontSize: 24.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ),
                    ),
                  ],
                ),
              ).animateOnPageLoad(
                  animationsMap['containerOnPageLoadAnimation']!),
              Align(
                alignment: const AlignmentDirectional(0.0, -1.0),
                child: Container(
                  width: double.infinity,
                  height: 770.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  alignment: const AlignmentDirectional(0.0, -1.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                10.0, 20.0, 10.0, 0.0),
                            child: Container(
                              width: 120.0,
                              height: 190.0,
                              decoration: const BoxDecoration(),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Align(
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                    child: Stack(
                                      alignment: const AlignmentDirectional(0.0, 1.0),
                                      children: [
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(0.0, 0.0),
                                          child: Container(
                                            width: 100.0,
                                            height: 167.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image: Image.asset(
                                                  'assets/images/quran.jpeg',
                                                ).image,
                                              ),
                                            ),
                                          ),
                                        ),
                                        const Align(
                                          alignment:
                                              AlignmentDirectional(0.83, 1.07),
                                          child: Icon(
                                            Icons.lock,
                                            color: Color(0xFF8E0AD4),
                                            size: 30.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text(
                                    'The Holy Quran',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Gentium Book Plus',
                                          fontSize: 12.0,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                10.0, 20.0, 10.0, 0.0),
                            child: Container(
                              width: 120.0,
                              height: 190.0,
                              decoration: const BoxDecoration(),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Align(
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                    child: Stack(
                                      alignment: const AlignmentDirectional(0.0, 1.0),
                                      children: [
                                        Container(
                                          width: 100.0,
                                          height: 167.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: Image.asset(
                                                'assets/images/quran.jpeg',
                                              ).image,
                                            ),
                                          ),
                                        ),
                                        const Align(
                                          alignment:
                                              AlignmentDirectional(0.83, 1.07),
                                          child: Icon(
                                            Icons.lock,
                                            color: Color(0xFF8E0AD4),
                                            size: 30.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text(
                                    'Mus\'haf al Tajwid',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Gentium Book Plus',
                                          fontSize: 12.0,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                10.0, 20.0, 10.0, 0.0),
                            child: Container(
                              width: 120.0,
                              height: 190.0,
                              decoration: const BoxDecoration(),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Align(
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                    child: Stack(
                                      alignment: const AlignmentDirectional(0.0, 1.0),
                                      children: [
                                        Container(
                                          width: 100.0,
                                          height: 167.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: Image.asset(
                                                'assets/images/quran.jpeg',
                                              ).image,
                                            ),
                                          ),
                                        ),
                                        const Align(
                                          alignment:
                                              AlignmentDirectional(0.83, 1.07),
                                          child: Icon(
                                            Icons.lock,
                                            color: Color(0xFF8E0AD4),
                                            size: 30.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text(
                                    'Mus\'haf Qaloon',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Gentium Book Plus',
                                          fontSize: 12.0,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                10.0, 20.0, 10.0, 0.0),
                            child: Container(
                              width: 120.0,
                              height: 190.0,
                              decoration: const BoxDecoration(),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Stack(
                                    alignment: const AlignmentDirectional(0.0, 1.0),
                                    children: [
                                      Container(
                                        width: 100.0,
                                        height: 167.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: Image.asset(
                                              'assets/images/quran.jpeg',
                                            ).image,
                                          ),
                                        ),
                                      ),
                                      const Align(
                                        alignment:
                                            AlignmentDirectional(0.83, 1.07),
                                        child: Icon(
                                          Icons.lock,
                                          color: Color(0xFF8E0AD4),
                                          size: 30.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    'Mus\'haf al Douri',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Gentium Book Plus',
                                          fontSize: 12.0,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                10.0, 20.0, 10.0, 0.0),
                            child: Container(
                              width: 120.0,
                              height: 190.0,
                              decoration: const BoxDecoration(),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Stack(
                                    alignment: const AlignmentDirectional(0.0, 1.0),
                                    children: [
                                      Container(
                                        width: 100.0,
                                        height: 167.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: Image.asset(
                                              'assets/images/quran.jpeg',
                                            ).image,
                                          ),
                                        ),
                                      ),
                                      const Align(
                                        alignment:
                                            AlignmentDirectional(0.83, 1.07),
                                        child: Icon(
                                          Icons.lock,
                                          color: Color(0xFF8E0AD4),
                                          size: 30.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    'Mus\'haf Warsh',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Gentium Book Plus',
                                          fontSize: 12.0,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                10.0, 20.0, 10.0, 0.0),
                            child: Container(
                              width: 120.0,
                              height: 206.0,
                              decoration: const BoxDecoration(),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Stack(
                                    alignment: const AlignmentDirectional(0.0, 1.0),
                                    children: [
                                      Container(
                                        width: 100.0,
                                        height: 167.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: Image.asset(
                                              'assets/images/quran.jpeg',
                                            ).image,
                                          ),
                                        ),
                                      ),
                                      const Align(
                                        alignment:
                                            AlignmentDirectional(0.83, 1.07),
                                        child: Icon(
                                          Icons.lock,
                                          color: Color(0xFF8E0AD4),
                                          size: 30.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    'Mus\'haf Madina \nNabawiya',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Gentium Book Plus',
                                          fontSize: 12.0,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
