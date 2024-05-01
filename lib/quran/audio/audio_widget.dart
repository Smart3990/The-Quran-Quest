import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'audio_model.dart';
export 'audio_model.dart';

class AudioWidget extends StatefulWidget {
  const AudioWidget({super.key});

  @override
  State<AudioWidget> createState() => _AudioWidgetState();
}

class _AudioWidgetState extends State<AudioWidget> {
  late AudioModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AudioModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.black,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: const AlignmentDirectional(-1.0, 1.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20.0, 50.0, 0.0, 0.0),
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
                    context.goNamed('playlist');
                  },
                ),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Stack(
                    children: [
                      Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: MediaQuery.sizeOf(context).height * 0.498,
                        decoration: const BoxDecoration(),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  12.0, 20.0, 12.0, 20.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50.0),
                                child: Image.asset(
                                  'assets/images/__-1_1_____.gif',
                                  width: 280.0,
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.4,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 20.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Quran  Player',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Gentium Book Plus',
                                          color: const Color(0xFFC7C4C4),
                                          fontSize: 15.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w300,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    height: 330.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryText,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(0.0),
                        bottomRight: Radius.circular(0.0),
                        topLeft: Radius.circular(12.0),
                        topRight: Radius.circular(12.0),
                      ),
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                      child: SizedBox(
                        width: double.infinity,
                        height: MediaQuery.sizeOf(context).height * 0.4,
                        child: custom_widgets.AdvanceMusicPlayer(
                          width: double.infinity,
                          height: MediaQuery.sizeOf(context).height * 0.4,
                          initialUrl: FFAppState().currentURL,
                          sliderActiveColor:
                              FlutterFlowTheme.of(context).tertiary,
                          sliderInactiveColor:
                              FlutterFlowTheme.of(context).primaryText,
                          backwardIconPath: Icon(
                            Icons.replay_10,
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            size: 35.0,
                          ),
                          forwardIconPath: Icon(
                            Icons.forward_10,
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            size: 35.0,
                          ),
                          backwardIconColor:
                              FlutterFlowTheme.of(context).primaryBackground,
                          forwardIconColor:
                              FlutterFlowTheme.of(context).primaryBackground,
                          pauseIconPath: Icon(
                            Icons.pause,
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            size: 35.0,
                          ),
                          playIconPath: Icon(
                            Icons.play_arrow,
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            size: 35.0,
                          ),
                          pauseIconColor:
                              FlutterFlowTheme.of(context).primaryText,
                          playIconColor:
                              FlutterFlowTheme.of(context).primaryText,
                          loopIconPath: Icon(
                            Icons.loop,
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            size: 35.0,
                          ),
                          loopIconColor:
                              FlutterFlowTheme.of(context).primaryBackground,
                          shuffleIconPath: const Icon(
                            Icons.shuffle,
                            color: Colors.white,
                            size: 35.0,
                          ),
                          shuffleIconColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          playbackDurationTextColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          previousIconPath: Icon(
                            Icons.skip_previous_sharp,
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            size: 35.0,
                          ),
                          nextIconPath: Icon(
                            Icons.skip_next,
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            size: 35.0,
                          ),
                          previousIconColor:
                              FlutterFlowTheme.of(context).primaryBackground,
                          nextIconColor:
                              FlutterFlowTheme.of(context).primaryBackground,
                          loopIconPressedPath: const Icon(
                            Icons.loop,
                            color: Color(0xFFE7723E),
                            size: 35.0,
                          ),
                          shuffleIconPressedPath: const Icon(
                            Icons.shuffle,
                            color: Color(0xFFE7723E),
                            size: 35.0,
                          ),
                          speakerOnIconPath: Icon(
                            Icons.speaker,
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            size: 35.0,
                          ),
                          speakerOffIconPath: const Icon(
                            Icons.speaker_outlined,
                            color: Color(0xFF429ACB),
                            size: 35.0,
                          ),
                          speakerOnIconColor:
                              FlutterFlowTheme.of(context).primaryBackground,
                          speakerOffIconColor: const Color(0xFF429ACB),
                          dropdownTextColor:
                              FlutterFlowTheme.of(context).primaryBackground,
                          timerIcon: const Icon(
                            Icons.timer_sharp,
                            color: Color(0xFFC7C4C4),
                            size: 35.0,
                          ),
                          musicUrls: FFAppState().musicUrls,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
