import '/backend/schema/structs/index.dart';
import '/backend/sqlite/sqlite_manager.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'my_cart_page_widget.dart' show MyCartPageWidget;
import 'package:flutter/material.dart';

class MyCartPageModel extends FlutterFlowModel<MyCartPageWidget> {
  ///  Local state fields for this page.

  OrderitemsStruct? orderitems;
  void updateOrderitemsStruct(Function(OrderitemsStruct) updateFn) =>
      updateFn(orderitems ??= OrderitemsStruct());

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - SQLite (getTotalprice)] action in Button widget.
  List<GetTotalpriceRow>? getTotalprice;
  // Stores action output result for [Custom Action - checktotalAmountNull] action in Button widget.
  bool? actionresult;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
