import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'subir_imagen_model.dart';
export 'subir_imagen_model.dart';

class SubirImagenWidget extends StatefulWidget {
  const SubirImagenWidget({super.key});

  @override
  State<SubirImagenWidget> createState() => _SubirImagenWidgetState();
}

class _SubirImagenWidgetState extends State<SubirImagenWidget> {
  late SubirImagenModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SubirImagenModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 1.0,
      height: MediaQuery.sizeOf(context).height * 1.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 15.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(
                '',
                width: 299.83,
                height: 200.0,
                fit: BoxFit.cover,
              ),
            ),
          ),
          FFButtonWidget(
            onPressed: () async {
              final selectedMedia = await selectMediaWithSourceBottomSheet(
                context: context,
                imageQuality: 35,
                allowPhoto: true,
              );
              if (selectedMedia != null &&
                  selectedMedia.every(
                      (m) => validateFileFormat(m.storagePath, context))) {
                safeSetState(
                    () => _model.isDataUploading_uploadData696Imagen = true);
                var selectedUploadedFiles = <FFUploadedFile>[];

                var downloadUrls = <String>[];
                try {
                  selectedUploadedFiles = selectedMedia
                      .map((m) => FFUploadedFile(
                            name: m.storagePath.split('/').last,
                            bytes: m.bytes,
                            height: m.dimensions?.height,
                            width: m.dimensions?.width,
                            blurHash: m.blurHash,
                            originalFilename: m.originalFilename,
                          ))
                      .toList();

                  downloadUrls = (await Future.wait(
                    selectedMedia.map(
                      (m) async => await uploadData(m.storagePath, m.bytes),
                    ),
                  ))
                      .where((u) => u != null)
                      .map((u) => u!)
                      .toList();
                } finally {
                  _model.isDataUploading_uploadData696Imagen = false;
                }
                if (selectedUploadedFiles.length == selectedMedia.length &&
                    downloadUrls.length == selectedMedia.length) {
                  safeSetState(() {
                    _model.uploadedLocalFile_uploadData696Imagen =
                        selectedUploadedFiles.first;
                    _model.uploadedFileUrl_uploadData696Imagen =
                        downloadUrls.first;
                  });
                } else {
                  safeSetState(() {});
                  return;
                }
              }

              FFAppState().imagen = _model.uploadedFileUrl_uploadData696Imagen;
              safeSetState(() {});
              Navigator.pop(context);
            },
            text: 'Adjuntar imagen',
            options: FFButtonOptions(
              height: 40.0,
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
              iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
              color: Color(0xFF6D2B92),
              textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                    font: GoogleFonts.interTight(
                      fontWeight:
                          FlutterFlowTheme.of(context).titleSmall.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).titleSmall.fontStyle,
                    ),
                    color: Colors.white,
                    letterSpacing: 0.0,
                    fontWeight:
                        FlutterFlowTheme.of(context).titleSmall.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).titleSmall.fontStyle,
                  ),
              elevation: 0.0,
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
        ],
      ),
    );
  }
}
