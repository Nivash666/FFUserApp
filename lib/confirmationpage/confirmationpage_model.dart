import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'confirmationpage_widget.dart' show ConfirmationpageWidget;
import 'package:flutter/material.dart';

class ConfirmationpageModel extends FlutterFlowModel<ConfirmationpageWidget> {
  ///  Local state fields for this page.

  int loopindex = 0;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  OrdersRow? orderespone;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
