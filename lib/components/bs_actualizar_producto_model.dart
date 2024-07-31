import '/flutter_flow/flutter_flow_util.dart';
import 'bs_actualizar_producto_widget.dart' show BsActualizarProductoWidget;
import 'package:flutter/material.dart';

class BsActualizarProductoModel
    extends FlutterFlowModel<BsActualizarProductoWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for txtNombre widget.
  FocusNode? txtNombreFocusNode;
  TextEditingController? txtNombreTextController;
  String? Function(BuildContext, String?)? txtNombreTextControllerValidator;
  // State field(s) for txtPrecio widget.
  FocusNode? txtPrecioFocusNode;
  TextEditingController? txtPrecioTextController;
  String? Function(BuildContext, String?)? txtPrecioTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtNombreFocusNode?.dispose();
    txtNombreTextController?.dispose();

    txtPrecioFocusNode?.dispose();
    txtPrecioTextController?.dispose();
  }
}
