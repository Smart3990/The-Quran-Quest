import '/flutter_flow/flutter_flow_util.dart';
import 'playlist_salim_widget.dart' show PlaylistSalimWidget;
import 'package:flutter/material.dart';

class PlaylistSalimModel extends FlutterFlowModel<PlaylistSalimWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
