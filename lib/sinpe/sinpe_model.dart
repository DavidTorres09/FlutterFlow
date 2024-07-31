import '/flutter_flow/flutter_flow_util.dart';
import 'sinpe_widget.dart' show SinpeWidget;
import 'package:flutter/material.dart';

class SinpeModel extends FlutterFlowModel<SinpeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Monto widget.
  FocusNode? montoFocusNode;
  TextEditingController? montoTextController;
  String? Function(BuildContext, String?)? montoTextControllerValidator;
  // State field(s) for NumeroDeDestino widget.
  FocusNode? numeroDeDestinoFocusNode;
  TextEditingController? numeroDeDestinoTextController;
  String? Function(BuildContext, String?)?
      numeroDeDestinoTextControllerValidator;
  // State field(s) for Descripcion widget.
  FocusNode? descripcionFocusNode;
  TextEditingController? descripcionTextController;
  String? Function(BuildContext, String?)? descripcionTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    montoFocusNode?.dispose();
    montoTextController?.dispose();

    numeroDeDestinoFocusNode?.dispose();
    numeroDeDestinoTextController?.dispose();

    descripcionFocusNode?.dispose();
    descripcionTextController?.dispose();
  }
}
