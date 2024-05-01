import '/flutter_flow/flutter_flow_util.dart';
import 'all_reciters_widget.dart' show AllRecitersWidget;
import 'package:flutter/material.dart';

class AllRecitersModel extends FlutterFlowModel<AllRecitersWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
