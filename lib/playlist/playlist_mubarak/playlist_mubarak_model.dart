import '/flutter_flow/flutter_flow_util.dart';
import 'playlist_mubarak_widget.dart' show PlaylistMubarakWidget;
import 'package:flutter/material.dart';

class PlaylistMubarakModel extends FlutterFlowModel<PlaylistMubarakWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
