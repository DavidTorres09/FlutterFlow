import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'api_widget.dart' show ApiWidget;
import 'dart:async';
import 'package:flutter/material.dart';

class ApiModel extends FlutterFlowModel<ApiWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txtPersonaje widget.
  FocusNode? txtPersonajeFocusNode;
  TextEditingController? txtPersonajeTextController;
  String? Function(BuildContext, String?)? txtPersonajeTextControllerValidator;
  // Stores action output result for [Backend Call - API (Rick And Morty)] action in txtPersonaje widget.
  ApiCallResponse? apiResultda9;
  Completer<ApiCallResponse>? apiRequestCompleter;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    txtPersonajeFocusNode?.dispose();
    txtPersonajeTextController?.dispose();
  }

  /// Additional helper methods.
  Future waitForApiRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
