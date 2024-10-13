import '/flutter_flow/flutter_flow_util.dart';
import 'home_n_s_i_widget.dart' show HomeNSIWidget;
import 'package:flutter/material.dart';

class HomeNSIModel extends FlutterFlowModel<HomeNSIWidget> {
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
