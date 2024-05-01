import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_audio_player.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'playlist_salim_model.dart';
export 'playlist_salim_model.dart';

class PlaylistSalimWidget extends StatefulWidget {
  const PlaylistSalimWidget({super.key});

  @override
  State<PlaylistSalimWidget> createState() => _PlaylistSalimWidgetState();
}

class _PlaylistSalimWidgetState extends State<PlaylistSalimWidget>
    with TickerProviderStateMixin {
  late PlaylistSalimModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PlaylistSalimModel());

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
                            context.goNamed('All_reciters');
                          },
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(1.0, 1.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 10.0),
                      child: Container(
                        width: 75.0,
                        height: 75.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          image: DecorationImage(
                            fit: BoxFit.contain,
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            image: Image.asset(
                              'assets/images/al-quran1.gif',
                            ).image,
                          ),
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).primaryText,
                            width: 3.0,
                          ),
                        ),
                        alignment: const AlignmentDirectional(0.0, 0.0),
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.0, 1.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 25.0),
                      child: Text(
                        'Play List',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
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
            ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!),
            Container(
              height: MediaQuery.sizeOf(context).height * 0.85,
              decoration: const BoxDecoration(),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 30.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 13.0),
                          child: Container(
                            width: 411.0,
                            height: 71.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(12.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).alternate,
                              ),
                            ),
                            child: Stack(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      50.0, 8.0, 0.0, 0.0),
                                  child: FlutterFlowAudioPlayer(
                                    audio: Audio(
                                      'assets/audios/Fatiha.mp3',
                                      metas: Metas(
                                        id: 'Fatiha.mp3-0a878921',
                                        title: 'Fatiha',
                                      ),
                                    ),
                                    titleTextStyle: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .override(
                                          fontFamily: 'Gentium Book Plus',
                                          fontSize: 16.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w300,
                                        ),
                                    playbackDurationTextStyle:
                                        FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Gentium Book Plus',
                                              letterSpacing: 0.0,
                                            ),
                                    fillColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    playbackButtonColor: const Color(0xFFB255CE),
                                    activeTrackColor:
                                        FlutterFlowTheme.of(context).alternate,
                                    elevation: 0.0,
                                    pauseOnNavigate: false,
                                    playInBackground: PlayInBackground.enabled,
                                  ),
                                ),
                                Text(
                                  'The Opening',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Gentium Book Plus',
                                        fontSize: 13.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w300,
                                      ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-0.93, -0.01),
                                  child: Text(
                                    '1',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Gentium Book Plus',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-0.99, 0.06),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        27.0, 0.0, 0.0, 0.0),
                                    child: Icon(
                                      Icons.graphic_eq_outlined,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 24.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 13.0),
                          child: Container(
                            width: 411.0,
                            height: 71.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(12.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).alternate,
                              ),
                            ),
                            child: Stack(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      50.0, 8.0, 0.0, 0.0),
                                  child: FlutterFlowAudioPlayer(
                                    audio: Audio(
                                      'assets/audios/Fatiha.mp3',
                                      metas: Metas(
                                        id: 'Fatiha.mp3-4abcb1b8',
                                        title: 'An Naas',
                                      ),
                                    ),
                                    titleTextStyle: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .override(
                                          fontFamily: 'Gentium Book Plus',
                                          fontSize: 16.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w300,
                                        ),
                                    playbackDurationTextStyle:
                                        FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Gentium Book Plus',
                                              letterSpacing: 0.0,
                                            ),
                                    fillColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    playbackButtonColor: const Color(0xFFB255CE),
                                    activeTrackColor:
                                        FlutterFlowTheme.of(context).alternate,
                                    elevation: 0.0,
                                    pauseOnNavigate: false,
                                    playInBackground: PlayInBackground.enabled,
                                  ),
                                ),
                                Text(
                                  'Mankind',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Gentium Book Plus',
                                        fontSize: 13.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w300,
                                      ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-0.93, -0.01),
                                  child: Text(
                                    '2',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Gentium Book Plus',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-0.99, 0.06),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        27.0, 0.0, 0.0, 0.0),
                                    child: Icon(
                                      Icons.graphic_eq_outlined,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 24.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 13.0),
                          child: Container(
                            width: 411.0,
                            height: 71.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(12.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).alternate,
                              ),
                            ),
                            child: Stack(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      50.0, 8.0, 0.0, 0.0),
                                  child: FlutterFlowAudioPlayer(
                                    audio: Audio(
                                      'assets/audios/Fatiha.mp3',
                                      metas: Metas(
                                        id: 'Fatiha.mp3-279c9116',
                                        title: 'Al Falaq',
                                      ),
                                    ),
                                    titleTextStyle: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .override(
                                          fontFamily: 'Gentium Book Plus',
                                          fontSize: 16.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w300,
                                        ),
                                    playbackDurationTextStyle:
                                        FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Gentium Book Plus',
                                              letterSpacing: 0.0,
                                            ),
                                    fillColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    playbackButtonColor: const Color(0xFFB255CE),
                                    activeTrackColor:
                                        FlutterFlowTheme.of(context).alternate,
                                    elevation: 0.0,
                                    pauseOnNavigate: false,
                                    playInBackground: PlayInBackground.enabled,
                                  ),
                                ),
                                Text(
                                  'Dawn',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Gentium Book Plus',
                                        fontSize: 13.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w300,
                                      ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-0.93, -0.01),
                                  child: Text(
                                    '3',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Gentium Book Plus',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-0.99, 0.06),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        27.0, 0.0, 0.0, 0.0),
                                    child: Icon(
                                      Icons.graphic_eq_outlined,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 24.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 13.0),
                          child: Container(
                            width: 411.0,
                            height: 71.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(12.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).alternate,
                              ),
                            ),
                            child: Stack(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      50.0, 8.0, 0.0, 0.0),
                                  child: FlutterFlowAudioPlayer(
                                    audio: Audio(
                                      'assets/audios/Fatiha.mp3',
                                      metas: Metas(
                                        id: 'Fatiha.mp3-4b64fc5a',
                                        title: 'Al Ikhlaas',
                                      ),
                                    ),
                                    titleTextStyle: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .override(
                                          fontFamily: 'Gentium Book Plus',
                                          fontSize: 16.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w300,
                                        ),
                                    playbackDurationTextStyle:
                                        FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Gentium Book Plus',
                                              letterSpacing: 0.0,
                                            ),
                                    fillColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    playbackButtonColor: const Color(0xFFB255CE),
                                    activeTrackColor:
                                        FlutterFlowTheme.of(context).alternate,
                                    elevation: 0.0,
                                    pauseOnNavigate: false,
                                    playInBackground: PlayInBackground.enabled,
                                  ),
                                ),
                                Text(
                                  'Sincerity',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Gentium Book Plus',
                                        fontSize: 13.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w300,
                                      ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-0.93, -0.01),
                                  child: Text(
                                    '4',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Gentium Book Plus',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-0.99, 0.06),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        27.0, 0.0, 0.0, 0.0),
                                    child: Icon(
                                      Icons.graphic_eq_outlined,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 24.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 13.0),
                          child: Container(
                            width: 411.0,
                            height: 71.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(12.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).alternate,
                              ),
                            ),
                            child: Stack(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      50.0, 8.0, 0.0, 0.0),
                                  child: FlutterFlowAudioPlayer(
                                    audio: Audio(
                                      'assets/audios/Fatiha.mp3',
                                      metas: Metas(
                                        id: 'Fatiha.mp3-005ff454',
                                        title: 'Al Masad',
                                      ),
                                    ),
                                    titleTextStyle: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .override(
                                          fontFamily: 'Gentium Book Plus',
                                          fontSize: 16.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w300,
                                        ),
                                    playbackDurationTextStyle:
                                        FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Gentium Book Plus',
                                              letterSpacing: 0.0,
                                            ),
                                    fillColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    playbackButtonColor: const Color(0xFFB255CE),
                                    activeTrackColor:
                                        FlutterFlowTheme.of(context).alternate,
                                    elevation: 0.0,
                                    pauseOnNavigate: false,
                                    playInBackground: PlayInBackground.enabled,
                                  ),
                                ),
                                Text(
                                  'Palm Fibre',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Gentium Book Plus',
                                        fontSize: 13.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w300,
                                      ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-0.93, -0.01),
                                  child: Text(
                                    '5',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Gentium Book Plus',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-0.99, 0.06),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        27.0, 0.0, 0.0, 0.0),
                                    child: Icon(
                                      Icons.graphic_eq_outlined,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 24.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 13.0),
                          child: Container(
                            width: 411.0,
                            height: 71.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(12.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).alternate,
                              ),
                            ),
                            child: Stack(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      50.0, 8.0, 0.0, 0.0),
                                  child: FlutterFlowAudioPlayer(
                                    audio: Audio(
                                      'assets/audios/Fatiha.mp3',
                                      metas: Metas(
                                        id: 'Fatiha.mp3-d2c82393',
                                        title: 'An Nasr',
                                      ),
                                    ),
                                    titleTextStyle: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .override(
                                          fontFamily: 'Gentium Book Plus',
                                          fontSize: 16.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w300,
                                        ),
                                    playbackDurationTextStyle:
                                        FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Gentium Book Plus',
                                              letterSpacing: 0.0,
                                            ),
                                    fillColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    playbackButtonColor: const Color(0xFFB255CE),
                                    activeTrackColor:
                                        FlutterFlowTheme.of(context).alternate,
                                    elevation: 0.0,
                                    pauseOnNavigate: false,
                                    playInBackground: PlayInBackground.enabled,
                                  ),
                                ),
                                Text(
                                  'The Help',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Gentium Book Plus',
                                        fontSize: 13.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w300,
                                      ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-0.93, -0.01),
                                  child: Text(
                                    '6',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Gentium Book Plus',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-0.99, 0.06),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        27.0, 0.0, 0.0, 0.0),
                                    child: Icon(
                                      Icons.graphic_eq_outlined,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 24.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 13.0),
                          child: Container(
                            width: 411.0,
                            height: 71.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(12.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).alternate,
                              ),
                            ),
                            child: Stack(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      50.0, 8.0, 0.0, 0.0),
                                  child: FlutterFlowAudioPlayer(
                                    audio: Audio(
                                      'assets/audios/Fatiha.mp3',
                                      metas: Metas(
                                        id: 'Fatiha.mp3-8245c598',
                                        title: 'Al Kafiroon',
                                      ),
                                    ),
                                    titleTextStyle: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .override(
                                          fontFamily: 'Gentium Book Plus',
                                          fontSize: 16.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w300,
                                        ),
                                    playbackDurationTextStyle:
                                        FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Gentium Book Plus',
                                              letterSpacing: 0.0,
                                            ),
                                    fillColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    playbackButtonColor: const Color(0xFFB255CE),
                                    activeTrackColor:
                                        FlutterFlowTheme.of(context).alternate,
                                    elevation: 0.0,
                                    pauseOnNavigate: false,
                                    playInBackground: PlayInBackground.enabled,
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(0.33, -0.11),
                                  child: Text(
                                    'Those who reject the Truth',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Gentium Book Plus',
                                          fontSize: 13.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w300,
                                        ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-0.93, -0.01),
                                  child: Text(
                                    '7',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Gentium Book Plus',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-0.99, 0.06),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        27.0, 0.0, 0.0, 0.0),
                                    child: Icon(
                                      Icons.graphic_eq_outlined,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 24.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 13.0),
                          child: Container(
                            width: 411.0,
                            height: 71.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(12.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).alternate,
                              ),
                            ),
                            child: Stack(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      50.0, 8.0, 0.0, 0.0),
                                  child: FlutterFlowAudioPlayer(
                                    audio: Audio(
                                      'assets/audios/Fatiha.mp3',
                                      metas: Metas(
                                        id: 'Fatiha.mp3-8b929607',
                                        title: 'Al Kawsar',
                                      ),
                                    ),
                                    titleTextStyle: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .override(
                                          fontFamily: 'Gentium Book Plus',
                                          fontSize: 16.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w300,
                                        ),
                                    playbackDurationTextStyle:
                                        FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Gentium Book Plus',
                                              letterSpacing: 0.0,
                                            ),
                                    fillColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    playbackButtonColor: const Color(0xFFB255CE),
                                    activeTrackColor:
                                        FlutterFlowTheme.of(context).alternate,
                                    elevation: 0.0,
                                    pauseOnNavigate: false,
                                    playInBackground: PlayInBackground.enabled,
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(0.02, -0.15),
                                  child: Text(
                                    'Abundance',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Gentium Book Plus',
                                          fontSize: 13.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w300,
                                        ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-0.93, -0.01),
                                  child: Text(
                                    '8',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Gentium Book Plus',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-0.99, 0.06),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        27.0, 0.0, 0.0, 0.0),
                                    child: Icon(
                                      Icons.graphic_eq_outlined,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 24.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 13.0),
                          child: Container(
                            width: 411.0,
                            height: 71.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(12.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).alternate,
                              ),
                            ),
                            child: Stack(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      50.0, 8.0, 0.0, 0.0),
                                  child: FlutterFlowAudioPlayer(
                                    audio: Audio(
                                      'assets/audios/Fatiha.mp3',
                                      metas: Metas(
                                        id: 'Fatiha.mp3-26017656',
                                        title: 'Al Maaun',
                                      ),
                                    ),
                                    titleTextStyle: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .override(
                                          fontFamily: 'Gentium Book Plus',
                                          fontSize: 16.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w300,
                                        ),
                                    playbackDurationTextStyle:
                                        FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Gentium Book Plus',
                                              letterSpacing: 0.0,
                                            ),
                                    fillColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    playbackButtonColor: const Color(0xFFB255CE),
                                    activeTrackColor:
                                        FlutterFlowTheme.of(context).alternate,
                                    elevation: 0.0,
                                    pauseOnNavigate: false,
                                    playInBackground: PlayInBackground.enabled,
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(0.02, -0.15),
                                  child: Text(
                                    'Assistance',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Gentium Book Plus',
                                          fontSize: 13.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w300,
                                        ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-0.93, -0.01),
                                  child: Text(
                                    '9',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Gentium Book Plus',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-0.99, 0.06),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        27.0, 0.0, 0.0, 0.0),
                                    child: Icon(
                                      Icons.graphic_eq_outlined,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 24.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 13.0),
                          child: Container(
                            width: 411.0,
                            height: 71.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(12.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).alternate,
                              ),
                            ),
                            child: Stack(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      50.0, 8.0, 0.0, 0.0),
                                  child: FlutterFlowAudioPlayer(
                                    audio: Audio(
                                      'assets/audios/Fatiha.mp3',
                                      metas: Metas(
                                        id: 'Fatiha.mp3-a5868f02',
                                        title: 'Quraysh',
                                      ),
                                    ),
                                    titleTextStyle: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .override(
                                          fontFamily: 'Gentium Book Plus',
                                          fontSize: 16.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w300,
                                        ),
                                    playbackDurationTextStyle:
                                        FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Gentium Book Plus',
                                              letterSpacing: 0.0,
                                            ),
                                    fillColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    playbackButtonColor: const Color(0xFFB255CE),
                                    activeTrackColor:
                                        FlutterFlowTheme.of(context).alternate,
                                    elevation: 0.0,
                                    pauseOnNavigate: false,
                                    playInBackground: PlayInBackground.enabled,
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(0.02, -0.15),
                                  child: Text(
                                    'Quraysh',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Gentium Book Plus',
                                          fontSize: 13.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w300,
                                        ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-0.95, 0.05),
                                  child: Text(
                                    '10',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Gentium Book Plus',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-0.99, 0.06),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        27.0, 0.0, 0.0, 0.0),
                                    child: Icon(
                                      Icons.graphic_eq_outlined,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 24.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 13.0),
                          child: Container(
                            width: 411.0,
                            height: 71.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(12.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).alternate,
                              ),
                            ),
                            child: Stack(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      50.0, 8.0, 0.0, 0.0),
                                  child: FlutterFlowAudioPlayer(
                                    audio: Audio(
                                      'assets/audios/Fatiha.mp3',
                                      metas: Metas(
                                        id: 'Fatiha.mp3-881da305',
                                        title: 'Al Fil',
                                      ),
                                    ),
                                    titleTextStyle: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .override(
                                          fontFamily: 'Gentium Book Plus',
                                          fontSize: 16.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w300,
                                        ),
                                    playbackDurationTextStyle:
                                        FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Gentium Book Plus',
                                              letterSpacing: 0.0,
                                            ),
                                    fillColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    playbackButtonColor: const Color(0xFFB255CE),
                                    activeTrackColor:
                                        FlutterFlowTheme.of(context).alternate,
                                    elevation: 0.0,
                                    pauseOnNavigate: false,
                                    playInBackground: PlayInBackground.enabled,
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(0.02, -0.15),
                                  child: Text(
                                    'The Elephant',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Gentium Book Plus',
                                          fontSize: 13.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w300,
                                        ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-0.94, 0.04),
                                  child: Text(
                                    '11',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Gentium Book Plus',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-0.99, 0.06),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        27.0, 0.0, 0.0, 0.0),
                                    child: Icon(
                                      Icons.graphic_eq_outlined,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 24.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 13.0),
                          child: Container(
                            width: 411.0,
                            height: 71.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(12.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).alternate,
                              ),
                            ),
                            child: Stack(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      50.0, 8.0, 0.0, 0.0),
                                  child: FlutterFlowAudioPlayer(
                                    audio: Audio(
                                      'assets/audios/Fatiha.mp3',
                                      metas: Metas(
                                        id: 'Fatiha.mp3-a8e1103c',
                                        title: 'Al Humazah',
                                      ),
                                    ),
                                    titleTextStyle: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .override(
                                          fontFamily: 'Gentium Book Plus',
                                          fontSize: 16.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w300,
                                        ),
                                    playbackDurationTextStyle:
                                        FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Gentium Book Plus',
                                              letterSpacing: 0.0,
                                            ),
                                    fillColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    playbackButtonColor: const Color(0xFFB255CE),
                                    activeTrackColor:
                                        FlutterFlowTheme.of(context).alternate,
                                    elevation: 0.0,
                                    pauseOnNavigate: false,
                                    playInBackground: PlayInBackground.enabled,
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(0.02, -0.15),
                                  child: Text(
                                    'The Slanderer',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Gentium Book Plus',
                                          fontSize: 13.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w300,
                                        ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-0.96, -0.01),
                                  child: Text(
                                    '12',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Gentium Book Plus',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-0.99, 0.06),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        27.0, 0.0, 0.0, 0.0),
                                    child: Icon(
                                      Icons.graphic_eq_outlined,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 24.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 13.0),
                          child: Container(
                            width: 411.0,
                            height: 71.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(12.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).alternate,
                              ),
                            ),
                            child: Stack(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      50.0, 8.0, 0.0, 0.0),
                                  child: FlutterFlowAudioPlayer(
                                    audio: Audio(
                                      'assets/audios/Fatiha.mp3',
                                      metas: Metas(
                                        id: 'Fatiha.mp3-1ccd45ea',
                                        title: 'Al Asr',
                                      ),
                                    ),
                                    titleTextStyle: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .override(
                                          fontFamily: 'Gentium Book Plus',
                                          fontSize: 16.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w300,
                                        ),
                                    playbackDurationTextStyle:
                                        FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Gentium Book Plus',
                                              letterSpacing: 0.0,
                                            ),
                                    fillColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    playbackButtonColor: const Color(0xFFB255CE),
                                    activeTrackColor:
                                        FlutterFlowTheme.of(context).alternate,
                                    elevation: 0.0,
                                    pauseOnNavigate: false,
                                    playInBackground: PlayInBackground.enabled,
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(0.02, -0.15),
                                  child: Text(
                                    'Time',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Gentium Book Plus',
                                          fontSize: 13.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w300,
                                        ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-0.96, 0.02),
                                  child: Text(
                                    '13',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Gentium Book Plus',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-0.99, 0.06),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        27.0, 0.0, 0.0, 0.0),
                                    child: Icon(
                                      Icons.graphic_eq_outlined,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 24.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 13.0),
                          child: Container(
                            width: 411.0,
                            height: 71.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(12.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).alternate,
                              ),
                            ),
                            child: Stack(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      50.0, 8.0, 0.0, 0.0),
                                  child: FlutterFlowAudioPlayer(
                                    audio: Audio(
                                      'assets/audios/Fatiha.mp3',
                                      metas: Metas(
                                        id: 'Fatiha.mp3-c0719761',
                                        title: 'At Takathur',
                                      ),
                                    ),
                                    titleTextStyle: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .override(
                                          fontFamily: 'Gentium Book Plus',
                                          fontSize: 16.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w300,
                                        ),
                                    playbackDurationTextStyle:
                                        FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Gentium Book Plus',
                                              letterSpacing: 0.0,
                                            ),
                                    fillColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    playbackButtonColor: const Color(0xFFB255CE),
                                    activeTrackColor:
                                        FlutterFlowTheme.of(context).alternate,
                                    elevation: 0.0,
                                    pauseOnNavigate: false,
                                    playInBackground: PlayInBackground.enabled,
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(0.21, -0.18),
                                  child: Text(
                                    'Competition for Riches',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Gentium Book Plus',
                                          fontSize: 13.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w300,
                                        ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-0.96, -0.03),
                                  child: Text(
                                    '14',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Gentium Book Plus',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-0.99, 0.06),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        27.0, 0.0, 0.0, 0.0),
                                    child: Icon(
                                      Icons.graphic_eq_outlined,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 24.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 13.0),
                          child: Container(
                            width: 411.0,
                            height: 71.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(12.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).alternate,
                              ),
                            ),
                            child: Stack(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      50.0, 8.0, 0.0, 0.0),
                                  child: FlutterFlowAudioPlayer(
                                    audio: Audio(
                                      'assets/audios/Fatiha.mp3',
                                      metas: Metas(
                                        id: 'Fatiha.mp3-5848e0e6',
                                        title: 'Al Qari\'ah',
                                      ),
                                    ),
                                    titleTextStyle: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .override(
                                          fontFamily: 'Gentium Book Plus',
                                          fontSize: 16.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w300,
                                        ),
                                    playbackDurationTextStyle:
                                        FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Gentium Book Plus',
                                              letterSpacing: 0.0,
                                            ),
                                    fillColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    playbackButtonColor: const Color(0xFFB255CE),
                                    activeTrackColor:
                                        FlutterFlowTheme.of(context).alternate,
                                    elevation: 0.0,
                                    pauseOnNavigate: false,
                                    playInBackground: PlayInBackground.enabled,
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(0.02, -0.15),
                                  child: Text(
                                    'The Calamity',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Gentium Book Plus',
                                          fontSize: 13.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w300,
                                        ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-0.97, -0.01),
                                  child: Text(
                                    '15',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Gentium Book Plus',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-0.99, 0.06),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        27.0, 0.0, 0.0, 0.0),
                                    child: Icon(
                                      Icons.graphic_eq_outlined,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 24.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 13.0),
                          child: Container(
                            width: 411.0,
                            height: 71.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(12.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).alternate,
                              ),
                            ),
                            child: Stack(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      50.0, 8.0, 0.0, 0.0),
                                  child: FlutterFlowAudioPlayer(
                                    audio: Audio(
                                      'assets/audios/Fatiha.mp3',
                                      metas: Metas(
                                        id: 'Fatiha.mp3-580e6385',
                                        title: 'Al Adiyat',
                                      ),
                                    ),
                                    titleTextStyle: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .override(
                                          fontFamily: 'Gentium Book Plus',
                                          fontSize: 16.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w300,
                                        ),
                                    playbackDurationTextStyle:
                                        FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Gentium Book Plus',
                                              letterSpacing: 0.0,
                                            ),
                                    fillColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    playbackButtonColor: const Color(0xFFB255CE),
                                    activeTrackColor:
                                        FlutterFlowTheme.of(context).alternate,
                                    elevation: 0.0,
                                    pauseOnNavigate: false,
                                    playInBackground: PlayInBackground.enabled,
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(0.02, -0.15),
                                  child: Text(
                                    'The Battle Horses',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Gentium Book Plus',
                                          fontSize: 13.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w300,
                                        ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-0.96, -0.03),
                                  child: Text(
                                    '16',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Gentium Book Plus',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-0.99, 0.06),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        27.0, 0.0, 0.0, 0.0),
                                    child: Icon(
                                      Icons.graphic_eq_outlined,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 24.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 13.0),
                          child: Container(
                            width: 411.0,
                            height: 71.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(12.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).alternate,
                              ),
                            ),
                            child: Stack(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      50.0, 8.0, 0.0, 0.0),
                                  child: FlutterFlowAudioPlayer(
                                    audio: Audio(
                                      'assets/audios/Fatiha.mp3',
                                      metas: Metas(
                                        id: 'Fatiha.mp3-befac470',
                                        title: 'Al Zalzalah',
                                      ),
                                    ),
                                    titleTextStyle: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .override(
                                          fontFamily: 'Gentium Book Plus',
                                          fontSize: 16.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w300,
                                        ),
                                    playbackDurationTextStyle:
                                        FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Gentium Book Plus',
                                              letterSpacing: 0.0,
                                            ),
                                    fillColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    playbackButtonColor: const Color(0xFFB255CE),
                                    activeTrackColor:
                                        FlutterFlowTheme.of(context).alternate,
                                    elevation: 0.0,
                                    pauseOnNavigate: false,
                                    playInBackground: PlayInBackground.enabled,
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(0.02, -0.15),
                                  child: Text(
                                    'Tihe Shaking',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Gentium Book Plus',
                                          fontSize: 13.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w300,
                                        ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-0.96, 0.07),
                                  child: Text(
                                    '17',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Gentium Book Plus',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-0.99, 0.06),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        27.0, 0.0, 0.0, 0.0),
                                    child: Icon(
                                      Icons.graphic_eq_outlined,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 24.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 13.0),
                          child: Container(
                            width: 411.0,
                            height: 71.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(12.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).alternate,
                              ),
                            ),
                            child: Stack(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      50.0, 8.0, 0.0, 0.0),
                                  child: FlutterFlowAudioPlayer(
                                    audio: Audio(
                                      'assets/audios/Fatiha.mp3',
                                      metas: Metas(
                                        id: 'Fatiha.mp3-592bdaa0',
                                        title: 'Al Bayyinah',
                                      ),
                                    ),
                                    titleTextStyle: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .override(
                                          fontFamily: 'Gentium Book Plus',
                                          fontSize: 16.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w300,
                                        ),
                                    playbackDurationTextStyle:
                                        FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Gentium Book Plus',
                                              letterSpacing: 0.0,
                                            ),
                                    fillColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    playbackButtonColor: const Color(0xFFB255CE),
                                    activeTrackColor:
                                        FlutterFlowTheme.of(context).alternate,
                                    elevation: 0.0,
                                    pauseOnNavigate: false,
                                    playInBackground: PlayInBackground.enabled,
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(0.02, -0.15),
                                  child: Text(
                                    'Clear Proof',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Gentium Book Plus',
                                          fontSize: 13.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w300,
                                        ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-0.96, 0.07),
                                  child: Text(
                                    '18',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Gentium Book Plus',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-0.99, 0.06),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        27.0, 0.0, 0.0, 0.0),
                                    child: Icon(
                                      Icons.graphic_eq_outlined,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 24.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 13.0),
                          child: Container(
                            width: 411.0,
                            height: 71.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(12.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).alternate,
                              ),
                            ),
                            child: Stack(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        50.0, 8.0, 0.0, 0.0),
                                    child: FlutterFlowAudioPlayer(
                                      audio: Audio(
                                        'assets/audios/Fatiha.mp3',
                                        metas: Metas(
                                          id: 'Fatiha.mp3-b0afba60',
                                          title: 'Al Qadr',
                                        ),
                                      ),
                                      titleTextStyle:
                                          FlutterFlowTheme.of(context)
                                              .titleLarge
                                              .override(
                                                fontFamily: 'Gentium Book Plus',
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w300,
                                              ),
                                      playbackDurationTextStyle:
                                          FlutterFlowTheme.of(context)
                                              .labelMedium
                                              .override(
                                                fontFamily: 'Gentium Book Plus',
                                                letterSpacing: 0.0,
                                              ),
                                      fillColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      playbackButtonColor: const Color(0xFFB255CE),
                                      activeTrackColor:
                                          FlutterFlowTheme.of(context)
                                              .alternate,
                                      elevation: 0.0,
                                      pauseOnNavigate: false,
                                      playInBackground:
                                          PlayInBackground.enabled,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(0.02, -0.15),
                                  child: Text(
                                    'The Destiny',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Gentium Book Plus',
                                          fontSize: 13.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w300,
                                        ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-0.96, 0.07),
                                  child: Text(
                                    '19',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Gentium Book Plus',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-0.99, 0.06),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        27.0, 0.0, 0.0, 0.0),
                                    child: Icon(
                                      Icons.graphic_eq_outlined,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 24.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 13.0),
                          child: Container(
                            width: 411.0,
                            height: 71.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(12.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).alternate,
                              ),
                            ),
                            child: Stack(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        50.0, 8.0, 0.0, 0.0),
                                    child: FlutterFlowAudioPlayer(
                                      audio: Audio(
                                        'assets/audios/Fatiha.mp3',
                                        metas: Metas(
                                          id: 'Fatiha.mp3-5a4f0fe3',
                                          title: 'Al Alaq',
                                        ),
                                      ),
                                      titleTextStyle:
                                          FlutterFlowTheme.of(context)
                                              .titleLarge
                                              .override(
                                                fontFamily: 'Gentium Book Plus',
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w300,
                                              ),
                                      playbackDurationTextStyle:
                                          FlutterFlowTheme.of(context)
                                              .labelMedium
                                              .override(
                                                fontFamily: 'Gentium Book Plus',
                                                letterSpacing: 0.0,
                                              ),
                                      fillColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      playbackButtonColor: const Color(0xFFB255CE),
                                      activeTrackColor:
                                          FlutterFlowTheme.of(context)
                                              .alternate,
                                      elevation: 0.0,
                                      pauseOnNavigate: false,
                                      playInBackground:
                                          PlayInBackground.enabled,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(0.02, -0.15),
                                  child: Text(
                                    'The Implant',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Gentium Book Plus',
                                          fontSize: 13.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w300,
                                        ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-0.96, 0.07),
                                  child: Text(
                                    '20',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Gentium Book Plus',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-0.99, 0.06),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        27.0, 0.0, 0.0, 0.0),
                                    child: Icon(
                                      Icons.graphic_eq_outlined,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 24.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 13.0),
                          child: Container(
                            width: 411.0,
                            height: 71.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(12.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).alternate,
                              ),
                            ),
                            child: Stack(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        50.0, 8.0, 0.0, 0.0),
                                    child: FlutterFlowAudioPlayer(
                                      audio: Audio(
                                        'assets/audios/Fatiha.mp3',
                                        metas: Metas(
                                          id: 'Fatiha.mp3-1256e2ce',
                                          title: 'Al Tin',
                                        ),
                                      ),
                                      titleTextStyle:
                                          FlutterFlowTheme.of(context)
                                              .titleLarge
                                              .override(
                                                fontFamily: 'Gentium Book Plus',
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w300,
                                              ),
                                      playbackDurationTextStyle:
                                          FlutterFlowTheme.of(context)
                                              .labelMedium
                                              .override(
                                                fontFamily: 'Gentium Book Plus',
                                                letterSpacing: 0.0,
                                              ),
                                      fillColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      playbackButtonColor: const Color(0xFFB255CE),
                                      activeTrackColor:
                                          FlutterFlowTheme.of(context)
                                              .alternate,
                                      elevation: 0.0,
                                      pauseOnNavigate: false,
                                      playInBackground:
                                          PlayInBackground.enabled,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(0.02, -0.15),
                                  child: Text(
                                    'The Fig',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Gentium Book Plus',
                                          fontSize: 13.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w300,
                                        ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-0.96, 0.07),
                                  child: Text(
                                    '21',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Gentium Book Plus',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-0.99, 0.06),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        27.0, 0.0, 0.0, 0.0),
                                    child: Icon(
                                      Icons.graphic_eq_outlined,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 24.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 13.0),
                          child: Container(
                            width: 411.0,
                            height: 71.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(12.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).alternate,
                              ),
                            ),
                            child: Stack(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        50.0, 8.0, 0.0, 0.0),
                                    child: FlutterFlowAudioPlayer(
                                      audio: Audio(
                                        'assets/audios/Fatiha.mp3',
                                        metas: Metas(
                                          id: 'Fatiha.mp3-a2db0cf8',
                                          title: 'As Sharh',
                                        ),
                                      ),
                                      titleTextStyle:
                                          FlutterFlowTheme.of(context)
                                              .titleLarge
                                              .override(
                                                fontFamily: 'Gentium Book Plus',
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w300,
                                              ),
                                      playbackDurationTextStyle:
                                          FlutterFlowTheme.of(context)
                                              .labelMedium
                                              .override(
                                                fontFamily: 'Gentium Book Plus',
                                                letterSpacing: 0.0,
                                              ),
                                      fillColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      playbackButtonColor: const Color(0xFFB255CE),
                                      activeTrackColor:
                                          FlutterFlowTheme.of(context)
                                              .alternate,
                                      elevation: 0.0,
                                      pauseOnNavigate: false,
                                      playInBackground:
                                          PlayInBackground.enabled,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(0.02, -0.15),
                                  child: Text(
                                    'The Expansion',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Gentium Book Plus',
                                          fontSize: 13.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w300,
                                        ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-0.96, 0.07),
                                  child: Text(
                                    '22',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Gentium Book Plus',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-0.99, 0.06),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        27.0, 0.0, 0.0, 0.0),
                                    child: Icon(
                                      Icons.graphic_eq_outlined,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 24.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 13.0),
                          child: Container(
                            width: 411.0,
                            height: 71.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(12.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).alternate,
                              ),
                            ),
                            child: Stack(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        50.0, 8.0, 0.0, 0.0),
                                    child: FlutterFlowAudioPlayer(
                                      audio: Audio(
                                        'assets/audios/Fatiha.mp3',
                                        metas: Metas(
                                          id: 'Fatiha.mp3-ad63b9b1',
                                          title: 'Ad Duha',
                                        ),
                                      ),
                                      titleTextStyle:
                                          FlutterFlowTheme.of(context)
                                              .titleLarge
                                              .override(
                                                fontFamily: 'Gentium Book Plus',
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w300,
                                              ),
                                      playbackDurationTextStyle:
                                          FlutterFlowTheme.of(context)
                                              .labelMedium
                                              .override(
                                                fontFamily: 'Gentium Book Plus',
                                                letterSpacing: 0.0,
                                              ),
                                      fillColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      playbackButtonColor: const Color(0xFFB255CE),
                                      activeTrackColor:
                                          FlutterFlowTheme.of(context)
                                              .alternate,
                                      elevation: 0.0,
                                      pauseOnNavigate: false,
                                      playInBackground:
                                          PlayInBackground.enabled,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(0.02, -0.15),
                                  child: Text(
                                    'The Morning Star',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Gentium Book Plus',
                                          fontSize: 13.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w300,
                                        ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-0.96, 0.07),
                                  child: Text(
                                    '23',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Gentium Book Plus',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-0.99, 0.06),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        27.0, 0.0, 0.0, 0.0),
                                    child: Icon(
                                      Icons.graphic_eq_outlined,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 24.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 13.0),
                          child: Container(
                            width: 411.0,
                            height: 71.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(12.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).alternate,
                              ),
                            ),
                            child: Stack(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        50.0, 8.0, 0.0, 0.0),
                                    child: FlutterFlowAudioPlayer(
                                      audio: Audio(
                                        'assets/audios/Fatiha.mp3',
                                        metas: Metas(
                                          id: 'Fatiha.mp3-30c482f7',
                                          title: 'Al Lail',
                                        ),
                                      ),
                                      titleTextStyle:
                                          FlutterFlowTheme.of(context)
                                              .titleLarge
                                              .override(
                                                fontFamily: 'Gentium Book Plus',
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w300,
                                              ),
                                      playbackDurationTextStyle:
                                          FlutterFlowTheme.of(context)
                                              .labelMedium
                                              .override(
                                                fontFamily: 'Gentium Book Plus',
                                                letterSpacing: 0.0,
                                              ),
                                      fillColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      playbackButtonColor: const Color(0xFFB255CE),
                                      activeTrackColor:
                                          FlutterFlowTheme.of(context)
                                              .alternate,
                                      elevation: 0.0,
                                      pauseOnNavigate: false,
                                      playInBackground:
                                          PlayInBackground.enabled,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(0.02, -0.15),
                                  child: Text(
                                    'The Night',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Gentium Book Plus',
                                          fontSize: 13.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w300,
                                        ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-0.96, 0.07),
                                  child: Text(
                                    '24',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Gentium Book Plus',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-0.99, 0.06),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        27.0, 0.0, 0.0, 0.0),
                                    child: Icon(
                                      Icons.graphic_eq_outlined,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 24.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 13.0),
                          child: Container(
                            width: 411.0,
                            height: 71.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(12.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).alternate,
                              ),
                            ),
                            child: Stack(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        50.0, 8.0, 0.0, 0.0),
                                    child: FlutterFlowAudioPlayer(
                                      audio: Audio(
                                        'assets/audios/Fatiha.mp3',
                                        metas: Metas(
                                          id: 'Fatiha.mp3-97ded918',
                                          title: 'As Shams',
                                        ),
                                      ),
                                      titleTextStyle:
                                          FlutterFlowTheme.of(context)
                                              .titleLarge
                                              .override(
                                                fontFamily: 'Gentium Book Plus',
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w300,
                                              ),
                                      playbackDurationTextStyle:
                                          FlutterFlowTheme.of(context)
                                              .labelMedium
                                              .override(
                                                fontFamily: 'Gentium Book Plus',
                                                letterSpacing: 0.0,
                                              ),
                                      fillColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      playbackButtonColor: const Color(0xFFB255CE),
                                      activeTrackColor:
                                          FlutterFlowTheme.of(context)
                                              .alternate,
                                      elevation: 0.0,
                                      pauseOnNavigate: false,
                                      playInBackground:
                                          PlayInBackground.enabled,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(0.02, -0.15),
                                  child: Text(
                                    'The Sun',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Gentium Book Plus',
                                          fontSize: 13.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w300,
                                        ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-0.96, 0.07),
                                  child: Text(
                                    '25',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Gentium Book Plus',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-0.99, 0.06),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        27.0, 0.0, 0.0, 0.0),
                                    child: Icon(
                                      Icons.graphic_eq_outlined,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 24.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 13.0),
                          child: Container(
                            width: 411.0,
                            height: 71.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(12.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).alternate,
                              ),
                            ),
                            child: Stack(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        50.0, 8.0, 0.0, 0.0),
                                    child: FlutterFlowAudioPlayer(
                                      audio: Audio(
                                        'assets/audios/Fatiha.mp3',
                                        metas: Metas(
                                          id: 'Fatiha.mp3-20ab7a1e',
                                          title: 'Al Balad',
                                        ),
                                      ),
                                      titleTextStyle:
                                          FlutterFlowTheme.of(context)
                                              .titleLarge
                                              .override(
                                                fontFamily: 'Gentium Book Plus',
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w300,
                                              ),
                                      playbackDurationTextStyle:
                                          FlutterFlowTheme.of(context)
                                              .labelMedium
                                              .override(
                                                fontFamily: 'Gentium Book Plus',
                                                letterSpacing: 0.0,
                                              ),
                                      fillColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      playbackButtonColor: const Color(0xFFB255CE),
                                      activeTrackColor:
                                          FlutterFlowTheme.of(context)
                                              .alternate,
                                      elevation: 0.0,
                                      pauseOnNavigate: false,
                                      playInBackground:
                                          PlayInBackground.enabled,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(0.02, -0.15),
                                  child: Text(
                                    'The City',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Gentium Book Plus',
                                          fontSize: 13.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w300,
                                        ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-0.94, 0.04),
                                  child: Text(
                                    '26',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Gentium Book Plus',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-0.99, 0.06),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        27.0, 0.0, 0.0, 0.0),
                                    child: Icon(
                                      Icons.graphic_eq_outlined,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 24.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 13.0),
                          child: Container(
                            width: 411.0,
                            height: 71.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(12.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).alternate,
                              ),
                            ),
                            child: Stack(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        50.0, 8.0, 0.0, 0.0),
                                    child: FlutterFlowAudioPlayer(
                                      audio: Audio(
                                        'assets/audios/Fatiha.mp3',
                                        metas: Metas(
                                          id: 'Fatiha.mp3-b2220702',
                                          title: 'Al Fajr',
                                        ),
                                      ),
                                      titleTextStyle:
                                          FlutterFlowTheme.of(context)
                                              .titleLarge
                                              .override(
                                                fontFamily: 'Gentium Book Plus',
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w300,
                                              ),
                                      playbackDurationTextStyle:
                                          FlutterFlowTheme.of(context)
                                              .labelMedium
                                              .override(
                                                fontFamily: 'Gentium Book Plus',
                                                letterSpacing: 0.0,
                                              ),
                                      fillColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      playbackButtonColor: const Color(0xFFB255CE),
                                      activeTrackColor:
                                          FlutterFlowTheme.of(context)
                                              .alternate,
                                      elevation: 0.0,
                                      pauseOnNavigate: false,
                                      playInBackground:
                                          PlayInBackground.enabled,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(0.02, -0.15),
                                  child: Text(
                                    'Daybreak',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Gentium Book Plus',
                                          fontSize: 13.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w300,
                                        ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-0.96, 0.07),
                                  child: Text(
                                    '27',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Gentium Book Plus',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-0.99, 0.06),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        27.0, 0.0, 0.0, 0.0),
                                    child: Icon(
                                      Icons.graphic_eq_outlined,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 24.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 13.0),
                          child: Container(
                            width: 411.0,
                            height: 71.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(12.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).alternate,
                              ),
                            ),
                            child: Stack(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        50.0, 8.0, 0.0, 0.0),
                                    child: FlutterFlowAudioPlayer(
                                      audio: Audio(
                                        'assets/audios/Fatiha.mp3',
                                        metas: Metas(
                                          id: 'Fatiha.mp3-394fb997',
                                          title: 'Al Ghashiyah',
                                        ),
                                      ),
                                      titleTextStyle:
                                          FlutterFlowTheme.of(context)
                                              .titleLarge
                                              .override(
                                                fontFamily: 'Gentium Book Plus',
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w300,
                                              ),
                                      playbackDurationTextStyle:
                                          FlutterFlowTheme.of(context)
                                              .labelMedium
                                              .override(
                                                fontFamily: 'Gentium Book Plus',
                                                letterSpacing: 0.0,
                                              ),
                                      fillColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      playbackButtonColor: const Color(0xFFB255CE),
                                      activeTrackColor:
                                          FlutterFlowTheme.of(context)
                                              .alternate,
                                      elevation: 0.0,
                                      pauseOnNavigate: false,
                                      playInBackground:
                                          PlayInBackground.enabled,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(0.02, -0.15),
                                  child: Text(
                                    'The Disaster',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Gentium Book Plus',
                                          fontSize: 13.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w300,
                                        ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-0.96, 0.07),
                                  child: Text(
                                    '28',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Gentium Book Plus',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-0.99, 0.06),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        27.0, 0.0, 0.0, 0.0),
                                    child: Icon(
                                      Icons.graphic_eq_outlined,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 24.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 13.0),
                          child: Container(
                            width: 411.0,
                            height: 71.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(12.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).alternate,
                              ),
                            ),
                            child: Stack(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        50.0, 8.0, 0.0, 0.0),
                                    child: FlutterFlowAudioPlayer(
                                      audio: Audio(
                                        'assets/audios/Fatiha.mp3',
                                        metas: Metas(
                                          id: 'Fatiha.mp3-7245ce9d',
                                          title: 'Al A\'la',
                                        ),
                                      ),
                                      titleTextStyle:
                                          FlutterFlowTheme.of(context)
                                              .titleLarge
                                              .override(
                                                fontFamily: 'Gentium Book Plus',
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w300,
                                              ),
                                      playbackDurationTextStyle:
                                          FlutterFlowTheme.of(context)
                                              .labelMedium
                                              .override(
                                                fontFamily: 'Gentium Book Plus',
                                                letterSpacing: 0.0,
                                              ),
                                      fillColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      playbackButtonColor: const Color(0xFFB255CE),
                                      activeTrackColor:
                                          FlutterFlowTheme.of(context)
                                              .alternate,
                                      elevation: 0.0,
                                      pauseOnNavigate: false,
                                      playInBackground:
                                          PlayInBackground.enabled,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(0.02, -0.15),
                                  child: Text(
                                    'The Most Elevated',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Gentium Book Plus',
                                          fontSize: 13.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w300,
                                        ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-0.96, 0.07),
                                  child: Text(
                                    '29',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Gentium Book Plus',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-0.99, 0.06),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        27.0, 0.0, 0.0, 0.0),
                                    child: Icon(
                                      Icons.graphic_eq_outlined,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 24.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 13.0),
                          child: Container(
                            width: 411.0,
                            height: 71.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(12.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).alternate,
                              ),
                            ),
                            child: Stack(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        50.0, 8.0, 0.0, 0.0),
                                    child: FlutterFlowAudioPlayer(
                                      audio: Audio(
                                        'assets/audios/Fatiha.mp3',
                                        metas: Metas(
                                          id: 'Fatiha.mp3-cea9523e',
                                          title: 'At Tariq',
                                        ),
                                      ),
                                      titleTextStyle:
                                          FlutterFlowTheme.of(context)
                                              .titleLarge
                                              .override(
                                                fontFamily: 'Gentium Book Plus',
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w300,
                                              ),
                                      playbackDurationTextStyle:
                                          FlutterFlowTheme.of(context)
                                              .labelMedium
                                              .override(
                                                fontFamily: 'Gentium Book Plus',
                                                letterSpacing: 0.0,
                                              ),
                                      fillColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      playbackButtonColor: const Color(0xFFB255CE),
                                      activeTrackColor:
                                          FlutterFlowTheme.of(context)
                                              .alternate,
                                      elevation: 0.0,
                                      pauseOnNavigate: false,
                                      playInBackground:
                                          PlayInBackground.enabled,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(0.02, -0.15),
                                  child: Text(
                                    'The Pulsating Star',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Gentium Book Plus',
                                          fontSize: 13.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w300,
                                        ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-0.96, 0.07),
                                  child: Text(
                                    '30',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Gentium Book Plus',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-0.99, 0.06),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        27.0, 0.0, 0.0, 0.0),
                                    child: Icon(
                                      Icons.graphic_eq_outlined,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 24.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 13.0),
                          child: Container(
                            width: 411.0,
                            height: 71.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(12.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).alternate,
                              ),
                            ),
                            child: Stack(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        50.0, 8.0, 0.0, 0.0),
                                    child: FlutterFlowAudioPlayer(
                                      audio: Audio(
                                        'assets/audios/Fatiha.mp3',
                                        metas: Metas(
                                          id: 'Fatiha.mp3-2703fec5',
                                          title: 'Al Buruj',
                                        ),
                                      ),
                                      titleTextStyle:
                                          FlutterFlowTheme.of(context)
                                              .titleLarge
                                              .override(
                                                fontFamily: 'Gentium Book Plus',
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w300,
                                              ),
                                      playbackDurationTextStyle:
                                          FlutterFlowTheme.of(context)
                                              .labelMedium
                                              .override(
                                                fontFamily: 'Gentium Book Plus',
                                                letterSpacing: 0.0,
                                              ),
                                      fillColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      playbackButtonColor: const Color(0xFFB255CE),
                                      activeTrackColor:
                                          FlutterFlowTheme.of(context)
                                              .alternate,
                                      elevation: 0.0,
                                      pauseOnNavigate: false,
                                      playInBackground:
                                          PlayInBackground.enabled,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(0.02, -0.15),
                                  child: Text(
                                    'Constellations',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Gentium Book Plus',
                                          fontSize: 13.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w300,
                                        ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-0.96, 0.07),
                                  child: Text(
                                    '31',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Gentium Book Plus',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-0.99, 0.06),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        27.0, 0.0, 0.0, 0.0),
                                    child: Icon(
                                      Icons.graphic_eq_outlined,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 24.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 13.0),
                          child: Container(
                            width: 411.0,
                            height: 71.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(12.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).alternate,
                              ),
                            ),
                            child: Stack(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        50.0, 8.0, 0.0, 0.0),
                                    child: FlutterFlowAudioPlayer(
                                      audio: Audio(
                                        'assets/audios/Fatiha.mp3',
                                        metas: Metas(
                                          id: 'Fatiha.mp3-ccd78978',
                                          title: 'Al Inshiqaq',
                                        ),
                                      ),
                                      titleTextStyle:
                                          FlutterFlowTheme.of(context)
                                              .titleLarge
                                              .override(
                                                fontFamily: 'Gentium Book Plus',
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w300,
                                              ),
                                      playbackDurationTextStyle:
                                          FlutterFlowTheme.of(context)
                                              .labelMedium
                                              .override(
                                                fontFamily: 'Gentium Book Plus',
                                                letterSpacing: 0.0,
                                              ),
                                      fillColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      playbackButtonColor: const Color(0xFFB255CE),
                                      activeTrackColor:
                                          FlutterFlowTheme.of(context)
                                              .alternate,
                                      elevation: 0.0,
                                      pauseOnNavigate: false,
                                      playInBackground:
                                          PlayInBackground.enabled,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(0.02, -0.15),
                                  child: Text(
                                    'The Splitting',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Gentium Book Plus',
                                          fontSize: 13.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w300,
                                        ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-0.96, 0.07),
                                  child: Text(
                                    '32',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Gentium Book Plus',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-0.99, 0.06),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        27.0, 0.0, 0.0, 0.0),
                                    child: Icon(
                                      Icons.graphic_eq_outlined,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 24.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 13.0),
                          child: Container(
                            width: 411.0,
                            height: 71.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(12.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).alternate,
                              ),
                            ),
                            child: Stack(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        50.0, 8.0, 0.0, 0.0),
                                    child: FlutterFlowAudioPlayer(
                                      audio: Audio(
                                        'assets/audios/Fatiha.mp3',
                                        metas: Metas(
                                          id: 'Fatiha.mp3-f4084c5a',
                                          title: 'Al Mutaffifin',
                                        ),
                                      ),
                                      titleTextStyle:
                                          FlutterFlowTheme.of(context)
                                              .titleLarge
                                              .override(
                                                fontFamily: 'Gentium Book Plus',
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w300,
                                              ),
                                      playbackDurationTextStyle:
                                          FlutterFlowTheme.of(context)
                                              .labelMedium
                                              .override(
                                                fontFamily: 'Gentium Book Plus',
                                                letterSpacing: 0.0,
                                              ),
                                      fillColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      playbackButtonColor: const Color(0xFFB255CE),
                                      activeTrackColor:
                                          FlutterFlowTheme.of(context)
                                              .alternate,
                                      elevation: 0.0,
                                      pauseOnNavigate: false,
                                      playInBackground:
                                          PlayInBackground.enabled,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(0.3, -0.18),
                                  child: Text(
                                    'Those Who Short-Change',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Gentium Book Plus',
                                          fontSize: 13.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w300,
                                        ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-0.96, 0.07),
                                  child: Text(
                                    '33',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Gentium Book Plus',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-0.99, 0.06),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        27.0, 0.0, 0.0, 0.0),
                                    child: Icon(
                                      Icons.graphic_eq_outlined,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 24.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 13.0),
                          child: Container(
                            width: 411.0,
                            height: 71.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(12.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).alternate,
                              ),
                            ),
                            child: Stack(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        50.0, 8.0, 0.0, 0.0),
                                    child: FlutterFlowAudioPlayer(
                                      audio: Audio(
                                        'assets/audios/Fatiha.mp3',
                                        metas: Metas(
                                          id: 'Fatiha.mp3-f184d88c',
                                          title: 'Al Infitar',
                                        ),
                                      ),
                                      titleTextStyle:
                                          FlutterFlowTheme.of(context)
                                              .titleLarge
                                              .override(
                                                fontFamily: 'Gentium Book Plus',
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w300,
                                              ),
                                      playbackDurationTextStyle:
                                          FlutterFlowTheme.of(context)
                                              .labelMedium
                                              .override(
                                                fontFamily: 'Gentium Book Plus',
                                                letterSpacing: 0.0,
                                              ),
                                      fillColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      playbackButtonColor: const Color(0xFFB255CE),
                                      activeTrackColor:
                                          FlutterFlowTheme.of(context)
                                              .alternate,
                                      elevation: 0.0,
                                      pauseOnNavigate: false,
                                      playInBackground:
                                          PlayInBackground.enabled,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(0.02, -0.15),
                                  child: Text(
                                    'The Rupture',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Gentium Book Plus',
                                          fontSize: 13.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w300,
                                        ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-0.96, 0.07),
                                  child: Text(
                                    '34',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Gentium Book Plus',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-0.99, 0.06),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        27.0, 0.0, 0.0, 0.0),
                                    child: Icon(
                                      Icons.graphic_eq_outlined,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 24.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 13.0),
                          child: Container(
                            width: 411.0,
                            height: 71.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(12.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).alternate,
                              ),
                            ),
                            child: Stack(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        50.0, 8.0, 0.0, 0.0),
                                    child: FlutterFlowAudioPlayer(
                                      audio: Audio(
                                        'assets/audios/Fatiha.mp3',
                                        metas: Metas(
                                          id: 'Fatiha.mp3-9c8333ca',
                                          title: 'At Takwir',
                                        ),
                                      ),
                                      titleTextStyle:
                                          FlutterFlowTheme.of(context)
                                              .titleLarge
                                              .override(
                                                fontFamily: 'Gentium Book Plus',
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w300,
                                              ),
                                      playbackDurationTextStyle:
                                          FlutterFlowTheme.of(context)
                                              .labelMedium
                                              .override(
                                                fontFamily: 'Gentium Book Plus',
                                                letterSpacing: 0.0,
                                              ),
                                      fillColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      playbackButtonColor: const Color(0xFFB255CE),
                                      activeTrackColor:
                                          FlutterFlowTheme.of(context)
                                              .alternate,
                                      elevation: 0.0,
                                      pauseOnNavigate: false,
                                      playInBackground:
                                          PlayInBackground.enabled,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(0.02, -0.1),
                                  child: Text(
                                    'The Collapse',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Gentium Book Plus',
                                          fontSize: 13.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w300,
                                        ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-0.96, 0.07),
                                  child: Text(
                                    '35',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Gentium Book Plus',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-0.99, 0.06),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        27.0, 0.0, 0.0, 0.0),
                                    child: Icon(
                                      Icons.graphic_eq_outlined,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 24.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 13.0),
                          child: Container(
                            width: 411.0,
                            height: 71.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(12.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).alternate,
                              ),
                            ),
                            child: Stack(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        50.0, 8.0, 0.0, 0.0),
                                    child: FlutterFlowAudioPlayer(
                                      audio: Audio(
                                        'assets/audios/Fatiha.mp3',
                                        metas: Metas(
                                          id: 'Fatiha.mp3-b98a296f',
                                          title: '\'Abasa',
                                        ),
                                      ),
                                      titleTextStyle:
                                          FlutterFlowTheme.of(context)
                                              .titleLarge
                                              .override(
                                                fontFamily: 'Gentium Book Plus',
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w300,
                                              ),
                                      playbackDurationTextStyle:
                                          FlutterFlowTheme.of(context)
                                              .labelMedium
                                              .override(
                                                fontFamily: 'Gentium Book Plus',
                                                letterSpacing: 0.0,
                                              ),
                                      fillColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      playbackButtonColor: const Color(0xFFB255CE),
                                      activeTrackColor:
                                          FlutterFlowTheme.of(context)
                                              .alternate,
                                      elevation: 0.0,
                                      pauseOnNavigate: false,
                                      playInBackground:
                                          PlayInBackground.enabled,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(0.02, -0.15),
                                  child: Text(
                                    'He frawned',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Gentium Book Plus',
                                          fontSize: 13.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w300,
                                        ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-0.96, 0.07),
                                  child: Text(
                                    '36',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Gentium Book Plus',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-0.99, 0.06),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        27.0, 0.0, 0.0, 0.0),
                                    child: Icon(
                                      Icons.graphic_eq_outlined,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 24.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 13.0),
                          child: Container(
                            width: 411.0,
                            height: 71.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(12.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).alternate,
                              ),
                            ),
                            child: Stack(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        50.0, 8.0, 0.0, 0.0),
                                    child: FlutterFlowAudioPlayer(
                                      audio: Audio(
                                        'assets/audios/Fatiha.mp3',
                                        metas: Metas(
                                          id: 'Fatiha.mp3-87ea8cae',
                                          title: 'An Nazi\'at',
                                        ),
                                      ),
                                      titleTextStyle:
                                          FlutterFlowTheme.of(context)
                                              .titleLarge
                                              .override(
                                                fontFamily: 'Gentium Book Plus',
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w300,
                                              ),
                                      playbackDurationTextStyle:
                                          FlutterFlowTheme.of(context)
                                              .labelMedium
                                              .override(
                                                fontFamily: 'Gentium Book Plus',
                                                letterSpacing: 0.0,
                                              ),
                                      fillColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      playbackButtonColor: const Color(0xFFB255CE),
                                      activeTrackColor:
                                          FlutterFlowTheme.of(context)
                                              .alternate,
                                      elevation: 0.0,
                                      pauseOnNavigate: false,
                                      playInBackground:
                                          PlayInBackground.enabled,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(0.02, -0.15),
                                  child: Text(
                                    'The Collectors',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Gentium Book Plus',
                                          fontSize: 13.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w300,
                                        ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-0.96, 0.07),
                                  child: Text(
                                    '37',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Gentium Book Plus',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-0.99, 0.06),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        27.0, 0.0, 0.0, 0.0),
                                    child: Icon(
                                      Icons.graphic_eq_outlined,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 24.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 13.0),
                          child: Container(
                            width: 411.0,
                            height: 71.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(12.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).alternate,
                              ),
                            ),
                            child: Stack(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        50.0, 8.0, 0.0, 0.0),
                                    child: FlutterFlowAudioPlayer(
                                      audio: Audio(
                                        'assets/audios/Fatiha.mp3',
                                        metas: Metas(
                                          id: 'Fatiha.mp3-333d82e1',
                                          title: 'An Naba',
                                        ),
                                      ),
                                      titleTextStyle:
                                          FlutterFlowTheme.of(context)
                                              .titleLarge
                                              .override(
                                                fontFamily: 'Gentium Book Plus',
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w300,
                                              ),
                                      playbackDurationTextStyle:
                                          FlutterFlowTheme.of(context)
                                              .labelMedium
                                              .override(
                                                fontFamily: 'Gentium Book Plus',
                                                letterSpacing: 0.0,
                                              ),
                                      fillColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      playbackButtonColor: const Color(0xFFB255CE),
                                      activeTrackColor:
                                          FlutterFlowTheme.of(context)
                                              .alternate,
                                      elevation: 0.0,
                                      pauseOnNavigate: false,
                                      playInBackground:
                                          PlayInBackground.enabled,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(0.02, -0.15),
                                  child: Text(
                                    'The News',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Gentium Book Plus',
                                          fontSize: 13.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w300,
                                        ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-0.96, 0.07),
                                  child: Text(
                                    '38',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Gentium Book Plus',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-0.99, 0.06),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        27.0, 0.0, 0.0, 0.0),
                                    child: Icon(
                                      Icons.graphic_eq_outlined,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 24.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
