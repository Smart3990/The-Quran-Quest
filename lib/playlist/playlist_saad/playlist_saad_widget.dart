import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_audio_player.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'playlist_saad_model.dart';
export 'playlist_saad_model.dart';

class PlaylistSaadWidget extends StatefulWidget {
  const PlaylistSaadWidget({super.key});

  @override
  State<PlaylistSaadWidget> createState() => _PlaylistSaadWidgetState();
}

class _PlaylistSaadWidgetState extends State<PlaylistSaadWidget>
    with TickerProviderStateMixin {
  late PlaylistSaadModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PlaylistSaadModel());

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
                                        id: 'Fatiha.mp3-20c9ab82',
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
                                        id: 'Fatiha.mp3-bc222c2e',
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
                                        id: 'Fatiha.mp3-d4f38fd0',
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
                                        id: 'Fatiha.mp3-97331c7c',
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
                                        id: 'Fatiha.mp3-a7709f75',
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
                                        id: 'Fatiha.mp3-1ae51998',
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
                                        id: 'Fatiha.mp3-dd21610d',
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
                                        id: 'Fatiha.mp3-abc8c476',
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
                                        id: 'Fatiha.mp3-a7cc0449',
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
                                        id: 'Fatiha.mp3-a4a87107',
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
                                        id: 'Fatiha.mp3-43732e00',
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
                                        id: 'Fatiha.mp3-7d35037b',
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
                                        id: 'Fatiha.mp3-0a0e3744',
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
                                        id: 'Fatiha.mp3-99805970',
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
                                        id: 'Fatiha.mp3-41edad2c',
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
                                        id: 'Fatiha.mp3-11d25dfa',
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
                                        id: 'Fatiha.mp3-97bd0124',
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
                                        id: 'Fatiha.mp3-d33c689d',
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
                                          id: 'Fatiha.mp3-16b30769',
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
                                          id: 'Fatiha.mp3-c96e6e9e',
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
                                          id: 'Fatiha.mp3-81cda099',
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
                                          id: 'Fatiha.mp3-85d7405e',
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
                                          id: 'Fatiha.mp3-4b43ef93',
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
                                          id: 'Fatiha.mp3-4eec25a4',
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
                                          id: 'Fatiha.mp3-9981945d',
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
                                          id: 'Fatiha.mp3-f12a9386',
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
                                          id: 'Fatiha.mp3-fb222dfa',
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
                                          id: 'Fatiha.mp3-34359d94',
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
                                          id: 'Fatiha.mp3-2d741206',
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
                                          id: 'Fatiha.mp3-f9ece6c2',
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
                                          id: 'Fatiha.mp3-18491860',
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
                                          id: 'Fatiha.mp3-9af16bfe',
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
                                          id: 'Fatiha.mp3-50b0f94d',
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
                                          id: 'Fatiha.mp3-9453d90d',
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
                                          id: 'Fatiha.mp3-65f9662c',
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
                                          id: 'Fatiha.mp3-61893551',
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
                                          id: 'Fatiha.mp3-2de7d331',
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
                                          id: 'Fatiha.mp3-ecb90fc7',
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
