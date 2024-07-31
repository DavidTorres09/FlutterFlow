import '/flutter_flow/flutter_flow_util.dart';
import 'promedio_calificaciones_widget.dart' show PromedioCalificacionesWidget;
import 'package:flutter/material.dart';

class PromedioCalificacionesModel
    extends FlutterFlowModel<PromedioCalificacionesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Custom Action - calcularPromedio] action in btnMostrar widget.
  double? resultado;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Custom Action - calcularPromedioPorUsuario] action in Button widget.
  double? resultadoCorreo;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
