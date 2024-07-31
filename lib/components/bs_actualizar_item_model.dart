import '/flutter_flow/flutter_flow_util.dart';
import 'bs_actualizar_item_widget.dart' show BsActualizarItemWidget;
import 'package:flutter/material.dart';

class BsActualizarItemModel extends FlutterFlowModel<BsActualizarItemWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for txtPresentacion widget.
  FocusNode? txtPresentacionFocusNode;
  TextEditingController? txtPresentacionTextController;
  String? Function(BuildContext, String?)?
      txtPresentacionTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtPresentacionFocusNode?.dispose();
    txtPresentacionTextController?.dispose();
  }
}
