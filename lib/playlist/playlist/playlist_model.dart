import '/flutter_flow/flutter_flow_util.dart';
import 'playlist_widget.dart' show PlaylistWidget;
import 'package:flutter/material.dart';

class PlaylistModel extends FlutterFlowModel<PlaylistWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
