import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'info_widget.dart' show InfoWidget;
import 'package:flutter/material.dart';

class InfoModel extends FlutterFlowModel<InfoWidget> {
  ///  Local state fields for this component.

  double? doubleratingLocal = 0.0;

  ///  State fields for stateful widgets in this component.

  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // State field(s) for CountController widget.
  int? countControllerValue;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  CamisasSeleccionadasRecord? productoCreadoExiste;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  CamisasSeleccionadasRecord? productoCreado;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
