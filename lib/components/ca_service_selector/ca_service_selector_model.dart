import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'ca_service_selector_widget.dart' show CaServiceSelectorWidget;
import 'package:flutter/material.dart';

class CaServiceSelectorModel extends FlutterFlowModel<CaServiceSelectorWidget> {
  ///  Local state fields for this component.

  List<String> selectedServices = [];
  void addToSelectedServices(String item) => selectedServices.add(item);
  void removeFromSelectedServices(String item) => selectedServices.remove(item);
  void removeAtIndexFromSelectedServices(int index) =>
      selectedServices.removeAt(index);
  void insertAtIndexInSelectedServices(int index, String item) =>
      selectedServices.insert(index, item);
  void updateSelectedServicesAtIndex(int index, Function(String) updateFn) =>
      selectedServices[index] = updateFn(selectedServices[index]);

  ///  State fields for stateful widgets in this component.

  // State field(s) for CheckboxListTile widget.
  Map<ServicesRecord, bool> checkboxListTileValueMap = {};
  List<ServicesRecord> get checkboxListTileCheckedItems =>
      checkboxListTileValueMap.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
