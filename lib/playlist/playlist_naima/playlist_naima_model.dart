import '/flutter_flow/flutter_flow_util.dart';
import 'playlist_naima_widget.dart' show PlaylistNaimaWidget;
import 'package:flutter/material.dart';

class PlaylistNaimaModel extends FlutterFlowModel<PlaylistNaimaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
