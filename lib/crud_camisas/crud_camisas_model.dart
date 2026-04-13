import '/flutter_flow/flutter_flow_util.dart';
import 'crud_camisas_widget.dart' show CrudCamisasWidget;
import 'package:flutter/material.dart';

class CrudCamisasModel extends FlutterFlowModel<CrudCamisasWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // State field(s) for NombreProducto widget.
  FocusNode? nombreProductoFocusNode;
  TextEditingController? nombreProductoTextController;
  String? Function(BuildContext, String?)?
      nombreProductoTextControllerValidator;
  // State field(s) for DescripcionProducto widget.
  FocusNode? descripcionProductoFocusNode;
  TextEditingController? descripcionProductoTextController;
  String? Function(BuildContext, String?)?
      descripcionProductoTextControllerValidator;
  // State field(s) for PrecioProducto widget.
  FocusNode? precioProductoFocusNode;
  TextEditingController? precioProductoTextController;
  String? Function(BuildContext, String?)?
      precioProductoTextControllerValidator;
  // State field(s) for Checkboxoferta widget.
  bool? checkboxofertaValue;
  // State field(s) for precioOferta widget.
  FocusNode? precioOfertaFocusNode;
  TextEditingController? precioOfertaTextController;
  String? Function(BuildContext, String?)? precioOfertaTextControllerValidator;
  // State field(s) for Cantidad widget.
  FocusNode? cantidadFocusNode;
  TextEditingController? cantidadTextController;
  String? Function(BuildContext, String?)? cantidadTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
    nombreProductoFocusNode?.dispose();
    nombreProductoTextController?.dispose();

    descripcionProductoFocusNode?.dispose();
    descripcionProductoTextController?.dispose();

    precioProductoFocusNode?.dispose();
    precioProductoTextController?.dispose();

    precioOfertaFocusNode?.dispose();
    precioOfertaTextController?.dispose();

    cantidadFocusNode?.dispose();
    cantidadTextController?.dispose();
  }
}
