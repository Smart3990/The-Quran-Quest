import '/flutter_flow/flutter_flow_util.dart';
import 'playlist_mahir_widget.dart' show PlaylistMahirWidget;
import 'package:flutter/material.dart';

class PlaylistMahirModel extends FlutterFlowModel<PlaylistMahirWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
