import '/flutter_flow/flutter_flow_util.dart';
import 'playlist_rakiba_widget.dart' show PlaylistRakibaWidget;
import 'package:flutter/material.dart';

class PlaylistRakibaModel extends FlutterFlowModel<PlaylistRakibaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
