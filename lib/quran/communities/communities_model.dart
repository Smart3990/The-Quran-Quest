import '/flutter_flow/flutter_flow_util.dart';
import 'communities_widget.dart' show CommunitiesWidget;
import 'package:flutter/material.dart';

class CommunitiesModel extends FlutterFlowModel<CommunitiesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
