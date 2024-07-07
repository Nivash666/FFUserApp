import '/flutter_flow/flutter_flow_util.dart';
import 'productlist_widget.dart' show ProductlistWidget;
import 'package:flutter/material.dart';

class ProductlistModel extends FlutterFlowModel<ProductlistWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
