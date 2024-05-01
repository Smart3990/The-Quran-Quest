import '/flutter_flow/flutter_flow_util.dart';
import 'al_quran_widget.dart' show AlQuranWidget;
import 'package:flutter/material.dart';

class AlQuranModel extends FlutterFlowModel<AlQuranWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
