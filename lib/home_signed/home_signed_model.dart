import '/flutter_flow/flutter_flow_util.dart';
import 'home_signed_widget.dart' show HomeSignedWidget;
import 'package:flutter/material.dart';

class HomeSignedModel extends FlutterFlowModel<HomeSignedWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
