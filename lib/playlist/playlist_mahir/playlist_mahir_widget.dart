import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_audio_player.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'playlist_mahir_model.dart';
export 'playlist_mahir_model.dart';

class PlaylistMahirWidget extends StatefulWidget {
  const PlaylistMahirWidget({super.key});

  @override
  State<PlaylistMahirWidget> createState() => _PlaylistMahirWidgetState();
}

class _PlaylistMahirWidgetState extends State<PlaylistMahirWidget>
    with TickerProviderStateMixin {
  late PlaylistMahirModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PlaylistMahirModel());

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
              height: MediaQuery.sizeOf(context).height * 0.84,
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
                                      'assets/audios/Nas.mp3',
                                      metas: Metas(
                                        id: 'Nas.mp3-14f55ba4',
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
                                      'assets/audios/Nas.mp3',
                                      metas: Metas(
                                        id: 'Nas.mp3-25a6a11f',
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
                                Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        50.0, 8.0, 0.0, 0.0),
                                    child: FlutterFlowAudioPlayer(
                                      audio: Audio(
                                        'assets/audios/Falaq.mp3',
                                        metas: Metas(
                                          id: 'Falaq.mp3-e3762414',
                                          title: 'Al Falaq',
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
                                      'assets/audios/Ikhlas.mp3',
                                      metas: Metas(
                                        id: 'Ikhlas.mp3-883e37f8',
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
                                      'assets/audios/Masad.mp3',
                                      metas: Metas(
                                        id: 'Masad.mp3-c3d6b4fa',
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
                                      'assets/audios/Nasr.mp3',
                                      metas: Metas(
                                        id: 'Nasr.mp3-c515a90c',
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
                                      'assets/audios/Kafirun.mp3',
                                      metas: Metas(
                                        id: 'Kafirun.mp3-d6af7eb4',
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
                                      'assets/audios/Kawsar.mp3',
                                      metas: Metas(
                                        id: 'Kawsar.mp3-fd2243de',
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
                                      'assets/audios/Maaun.mp3.mp3',
                                      metas: Metas(
                                        id: 'Maaun.mp3.mp3-812d57fb',
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
                                      'assets/audios/Quraush.mp3',
                                      metas: Metas(
                                        id: 'Quraush.mp3-c0e6f1f9',
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
                                      'assets/audios/Fil.mp3',
                                      metas: Metas(
                                        id: 'Fil.mp3-e91ffb35',
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
                                      'assets/audios/Humaza.mp3.mp3',
                                      metas: Metas(
                                        id: 'Humaza.mp3.mp3-c1157922',
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
                                Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        50.0, 8.0, 0.0, 0.0),
                                    child: FlutterFlowAudioPlayer(
                                      audio: Audio(
                                        'assets/audios/Asr.mp3',
                                        metas: Metas(
                                          id: 'Asr.mp3-e2ad2ea6',
                                          title: 'Al Asr',
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
                                      'assets/audios/Takasur.mp3.mp3',
                                      metas: Metas(
                                        id: 'Takasur.mp3.mp3-8450e7f0',
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
                                      'assets/audios/Qaria.mp3',
                                      metas: Metas(
                                        id: 'Qaria.mp3-c13d75fc',
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
                                      'assets/audios/Adiyat.mp3',
                                      metas: Metas(
                                        id: 'Adiyat.mp3-00428930',
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
                                      'assets/audios/Zalzala.mp3.mp3',
                                      metas: Metas(
                                        id: 'Zalzala.mp3.mp3-f44df4ce',
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
                                      'assets/audios/Bayina.mp3',
                                      metas: Metas(
                                        id: 'Bayina.mp3-209e5471',
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
                                        'assets/audios/Qadr.mp3',
                                        metas: Metas(
                                          id: 'Qadr.mp3-d30ae8d4',
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
                                        'assets/audios/Alaq.mp3',
                                        metas: Metas(
                                          id: 'Alaq.mp3-7f435fb6',
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
