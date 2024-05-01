import '/flutter_flow/flutter_flow_util.dart';
import 'developer_widget.dart' show DeveloperWidget;
import 'package:flutter/material.dart';

class DeveloperModel extends FlutterFlowModel<DeveloperWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
