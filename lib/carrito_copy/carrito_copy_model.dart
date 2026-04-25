import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'carrito_copy_widget.dart' show CarritoCopyWidget;
import 'package:flutter/material.dart';

class CarritoCopyModel extends FlutterFlowModel<CarritoCopyWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextFieldDescuento widget.
  FocusNode? textFieldDescuentoFocusNode;
  TextEditingController? textFieldDescuentoTextController;
  String? Function(BuildContext, String?)?
      textFieldDescuentoTextControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  OrdenRecord? orden;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldDescuentoFocusNode?.dispose();
    textFieldDescuentoTextController?.dispose();

    textFieldFocusNode?.dispose();
    textController2?.dispose();
  }
}
