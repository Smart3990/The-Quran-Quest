import '/flutter_flow/flutter_flow_util.dart';
import 'playlist_suleyman_widget.dart' show PlaylistSuleymanWidget;
import 'package:flutter/material.dart';

class PlaylistSuleymanModel extends FlutterFlowModel<PlaylistSuleymanWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
