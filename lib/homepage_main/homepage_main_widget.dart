import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import 'package:flutter/material.dart';
import 'homepage_main_model.dart';
export 'homepage_main_model.dart';

class HomepageMainWidget extends StatefulWidget {
  const HomepageMainWidget({super.key});

  @override
  State<HomepageMainWidget> createState() => _HomepageMainWidgetState();
}

class _HomepageMainWidgetState extends State<HomepageMainWidget> {
  late HomepageMainModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomepageMainModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primary,
        body: SafeArea(
          top: true,
          child: Container(
            width: MediaQuery.sizeOf(context).width * 1.0,
            height: MediaQuery.sizeOf(context).height * 1.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primary,
            ),
            child: FlutterFlowWebView(
              content: 'https://hostinglab.cloud',
              bypass: false,
              width: MediaQuery.sizeOf(context).width * 1.0,
              height: MediaQuery.sizeOf(context).height * 0.998,
              verticalScroll: true,
              horizontalScroll: true,
            ),
          ),
        ),
      ),
    );
  }
}
