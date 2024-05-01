import '/flutter_flow/flutter_flow_util.dart';
import 'athan_widget.dart' show AthanWidget;
import 'package:flutter/material.dart';

class AthanModel extends FlutterFlowModel<AthanWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
