import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'register_page_widget.dart' show RegisterPageWidget;
import 'package:flutter/material.dart';

class RegisterPageModel extends FlutterFlowModel<RegisterPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for textfieldNombre widget.
  FocusNode? textfieldNombreFocusNode;
  TextEditingController? textfieldNombreTextController;
  String? Function(BuildContext, String?)?
      textfieldNombreTextControllerValidator;
  // State field(s) for textfieldTelefono widget.
  FocusNode? textfieldTelefonoFocusNode;
  TextEditingController? textfieldTelefonoTextController;
  String? Function(BuildContext, String?)?
      textfieldTelefonoTextControllerValidator;
  // State field(s) for textfieldEmail widget.
  FocusNode? textfieldEmailFocusNode;
  TextEditingController? textfieldEmailTextController;
  String? Function(BuildContext, String?)?
      textfieldEmailTextControllerValidator;
  // State field(s) for textfieldPW widget.
  FocusNode? textfieldPWFocusNode;
  TextEditingController? textfieldPWTextController;
  late bool textfieldPWVisibility;
  String? Function(BuildContext, String?)? textfieldPWTextControllerValidator;
  // State field(s) for textfieldPWconfirm widget.
  FocusNode? textfieldPWconfirmFocusNode;
  TextEditingController? textfieldPWconfirmTextController;
  late bool textfieldPWconfirmVisibility;
  String? Function(BuildContext, String?)?
      textfieldPWconfirmTextControllerValidator;

  @override
  void initState(BuildContext context) {
    textfieldPWVisibility = false;
    textfieldPWconfirmVisibility = false;
  }

  @override
  void dispose() {
    textfieldNombreFocusNode?.dispose();
    textfieldNombreTextController?.dispose();

    textfieldTelefonoFocusNode?.dispose();
    textfieldTelefonoTextController?.dispose();

    textfieldEmailFocusNode?.dispose();
    textfieldEmailTextController?.dispose();

    textfieldPWFocusNode?.dispose();
    textfieldPWTextController?.dispose();

    textfieldPWconfirmFocusNode?.dispose();
    textfieldPWconfirmTextController?.dispose();
  }
}
