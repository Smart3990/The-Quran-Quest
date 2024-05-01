import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'terms_of_services_model.dart';
export 'terms_of_services_model.dart';

class TermsOfServicesWidget extends StatefulWidget {
  const TermsOfServicesWidget({super.key});

  @override
  State<TermsOfServicesWidget> createState() => _TermsOfServicesWidgetState();
}

class _TermsOfServicesWidgetState extends State<TermsOfServicesWidget>
    with TickerProviderStateMixin {
  late TermsOfServicesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TermsOfServicesModel());

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
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
              child: Container(
                decoration: const BoxDecoration(),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 130.0, 0.0, 0.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              20.0, 20.0, 20.0, 0.0),
                          child: Text(
                            'Terms of Service for The Quran Quest App',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Gentium Book Plus',
                                  fontSize: 25.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 20.0, 50.0),
                          child: Text(
                            '\nWelcome to The Quran Quest app! We are delighted to have you join us on this journey of learning and embracing the memorization of the Quran. Before you proceed, please read the following Terms of Service carefully:\n\nAcceptance of Terms: \nBy downloading, accessing, or using The Quran Quest app, you agree to abide by these Terms of Service. If you do not agree with any part of these terms, please refrain from using the app.\n\nApp Description: \nThe Quran Quest is an educational app designed to motivate and inspire youth to learn and embrace the memorization of the Quran. It provides engaging content, challenges, and resources to support users in their Quranic journey.\n\nDeveloper Contact:\n For more information about The Quran Quest app, please visit the developer section within the app. You can also reach out to the developer directly for any business inquiries or donations via WhatsApp or LinkedIn, accessible through the developer section.\n\nUser Conduct: \nUsers of The Quran Quest app are expected to conduct themselves respectfully and responsibly. Any misuse of the app or violation of these Terms of Service may result in the termination of access to the app.\n\nIntellectual Property: \nAll content, including text, images, videos, and audio files, provided in The Quran Quest app is the intellectual property of the developer or licensed to the developer. Users may not reproduce, distribute, or modify any content without prior written consent.\n\nPrivacy Policy: The Quran Quest app respects your privacy and is committed to protecting your personal information. Please review our Privacy Policy to understand how we collect, use, and safeguard your data.\n\nUpdates and Changes: \nThe developer reserves the right to update, modify, or discontinue The Quran Quest app at any time without prior notice. Users will be notified of significant changes to the app or these Terms of Service.\n\nLimitation of Liability: \nThe developer of The Quran Quest app shall not be liable for any damages, losses, or liabilities arising from the use or inability to use the app, including but not limited to direct, indirect, incidental, or consequential damages.\n\nThank you for choosing The Quran Quest app. We hope you find it valuable and inspiring in your Quranic journey. If you have any questions or concerns regarding these Terms of Service, please contact us through the developer section within the app.\n\nYussif Nuhu\nThe Quran Quest App',
                            textAlign: TextAlign.justify,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Gentium Book Plus',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontSize: 20.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Stack(
              alignment: const AlignmentDirectional(0.0, 1.0),
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
                  child: Container(
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
                            context.goNamed('Setting');
                          },
                        ),
                      ),
                    ),
                  ),
                ).animateOnPageLoad(
                    animationsMap['containerOnPageLoadAnimation']!),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 25.0),
                  child: Text(
                    'The Quran Quest App',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Gentium Book Plus',
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          fontSize: 24.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
