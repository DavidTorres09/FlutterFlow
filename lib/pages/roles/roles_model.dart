import '/flutter_flow/flutter_flow_util.dart';
import 'roles_widget.dart' show RolesWidget;
import 'package:flutter/material.dart';

class RolesModel extends FlutterFlowModel<RolesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
