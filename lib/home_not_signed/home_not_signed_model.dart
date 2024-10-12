import '/flutter_flow/flutter_flow_util.dart';
import 'home_not_signed_widget.dart' show HomeNotSignedWidget;
import 'package:flutter/material.dart';

class HomeNotSignedModel extends FlutterFlowModel<HomeNotSignedWidget> {
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
