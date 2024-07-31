import '/flutter_flow/flutter_flow_util.dart';
import 'lista_presentacion_productos_widget.dart'
    show ListaPresentacionProductosWidget;
import 'package:flutter/material.dart';

class ListaPresentacionProductosModel
    extends FlutterFlowModel<ListaPresentacionProductosWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
