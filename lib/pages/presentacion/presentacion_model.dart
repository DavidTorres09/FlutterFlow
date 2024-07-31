import '/flutter_flow/flutter_flow_util.dart';
import 'presentacion_widget.dart' show PresentacionWidget;
import 'package:flutter/material.dart';

class PresentacionModel extends FlutterFlowModel<PresentacionWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
