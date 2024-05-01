import '/flutter_flow/flutter_flow_util.dart';
import 'audio_widget.dart' show AudioWidget;
import 'package:flutter/material.dart';

class AudioModel extends FlutterFlowModel<AudioWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
