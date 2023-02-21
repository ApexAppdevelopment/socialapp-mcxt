import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'nopost_model.dart';
export 'nopost_model.dart';

class NopostWidget extends StatefulWidget {
  const NopostWidget({Key? key}) : super(key: key);

  @override
  _NopostWidgetState createState() => _NopostWidgetState();
}

class _NopostWidgetState extends State<NopostWidget> {
  late NopostModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NopostModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.post_add_outlined,
          color: FlutterFlowTheme.of(context).secondaryText,
          size: 90,
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Seems you don’t have any post',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).title3.override(
                      fontFamily: FlutterFlowTheme.of(context).title3Family,
                      color: FlutterFlowTheme.of(context).primaryText,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).title3Family),
                    ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(12, 4, 12, 0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Text(
                  'Create a post they will appear here.',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyText2,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
          child: FFButtonWidget(
            onPressed: () async {
              context.pushNamed('createPost');
            },
            text: 'Add Post',
            options: FFButtonOptions(
              width: 170,
              height: 50,
              color: FlutterFlowTheme.of(context).primaryColor,
              textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                    fontFamily: 'Lexend Deca',
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    useGoogleFonts: GoogleFonts.asMap().containsKey(
                        FlutterFlowTheme.of(context).subtitle2Family),
                  ),
              elevation: 2,
              borderSide: BorderSide(
                color: Colors.transparent,
                width: 1,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
