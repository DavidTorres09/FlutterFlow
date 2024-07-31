import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txtEmail widget.
  FocusNode? txtEmailFocusNode;
  TextEditingController? txtEmailTextController;
  String? Function(BuildContext, String?)? txtEmailTextControllerValidator;
  // State field(s) for txtPassword widget.
  FocusNode? txtPasswordFocusNode;
  TextEditingController? txtPasswordTextController;
  late bool txtPasswordVisibility;
  String? Function(BuildContext, String?)? txtPasswordTextControllerValidator;
  // State field(s) for txtPasswordConfirm widget.
  FocusNode? txtPasswordConfirmFocusNode;
  TextEditingController? txtPasswordConfirmTextController;
  late bool txtPasswordConfirmVisibility;
  String? Function(BuildContext, String?)?
      txtPasswordConfirmTextControllerValidator;
  // State field(s) for txtUsuario widget.
  FocusNode? txtUsuarioFocusNode;
  TextEditingController? txtUsuarioTextController;
  String? Function(BuildContext, String?)? txtUsuarioTextControllerValidator;
  // State field(s) for txtImagen widget.
  FocusNode? txtImagenFocusNode;
  TextEditingController? txtImagenTextController;
  String? Function(BuildContext, String?)? txtImagenTextControllerValidator;
  // State field(s) for txtTelefono widget.
  FocusNode? txtTelefonoFocusNode;
  TextEditingController? txtTelefonoTextController;
  String? Function(BuildContext, String?)? txtTelefonoTextControllerValidator;
  // State field(s) for dDRol widget.
  String? dDRolValue;
  FormFieldController<String>? dDRolValueController;

  @override
  void initState(BuildContext context) {
    txtPasswordVisibility = false;
    txtPasswordConfirmVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    txtEmailFocusNode?.dispose();
    txtEmailTextController?.dispose();

    txtPasswordFocusNode?.dispose();
    txtPasswordTextController?.dispose();

    txtPasswordConfirmFocusNode?.dispose();
    txtPasswordConfirmTextController?.dispose();

    txtUsuarioFocusNode?.dispose();
    txtUsuarioTextController?.dispose();

    txtImagenFocusNode?.dispose();
    txtImagenTextController?.dispose();

    txtTelefonoFocusNode?.dispose();
    txtTelefonoTextController?.dispose();
  }
}
