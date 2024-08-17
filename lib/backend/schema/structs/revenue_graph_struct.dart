// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class RevenueGraphStruct extends FFFirebaseStruct {
  RevenueGraphStruct({
    int? revenue,
    int? dates,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _revenue = revenue,
        _dates = dates,
        super(firestoreUtilData);

  // "revenue" field.
  int? _revenue;
  int get revenue => _revenue ?? 0;
  set revenue(int? val) => _revenue = val;

  void incrementRevenue(int amount) => revenue = revenue + amount;

  bool hasRevenue() => _revenue != null;

  // "dates" field.
  int? _dates;
  int get dates => _dates ?? 0;
  set dates(int? val) => _dates = val;

  void incrementDates(int amount) => dates = dates + amount;

  bool hasDates() => _dates != null;

  static RevenueGraphStruct fromMap(Map<String, dynamic> data) =>
      RevenueGraphStruct(
        revenue: castToType<int>(data['revenue']),
        dates: castToType<int>(data['dates']),
      );

  static RevenueGraphStruct? maybeFromMap(dynamic data) => data is Map
      ? RevenueGraphStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'revenue': _revenue,
        'dates': _dates,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'revenue': serializeParam(
          _revenue,
          ParamType.int,
        ),
        'dates': serializeParam(
          _dates,
          ParamType.int,
        ),
      }.withoutNulls;

  static RevenueGraphStruct fromSerializableMap(Map<String, dynamic> data) =>
      RevenueGraphStruct(
        revenue: deserializeParam(
          data['revenue'],
          ParamType.int,
          false,
        ),
        dates: deserializeParam(
          data['dates'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'RevenueGraphStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is RevenueGraphStruct &&
        revenue == other.revenue &&
        dates == other.dates;
  }

  @override
  int get hashCode => const ListEquality().hash([revenue, dates]);
}

RevenueGraphStruct createRevenueGraphStruct({
  int? revenue,
  int? dates,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    RevenueGraphStruct(
      revenue: revenue,
      dates: dates,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

RevenueGraphStruct? updateRevenueGraphStruct(
  RevenueGraphStruct? revenueGraph, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    revenueGraph
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addRevenueGraphStructData(
  Map<String, dynamic> firestoreData,
  RevenueGraphStruct? revenueGraph,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (revenueGraph == null) {
    return;
  }
  if (revenueGraph.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && revenueGraph.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final revenueGraphData =
      getRevenueGraphFirestoreData(revenueGraph, forFieldValue);
  final nestedData =
      revenueGraphData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = revenueGraph.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getRevenueGraphFirestoreData(
  RevenueGraphStruct? revenueGraph, [
  bool forFieldValue = false,
]) {
  if (revenueGraph == null) {
    return {};
  }
  final firestoreData = mapToFirestore(revenueGraph.toMap());

  // Add any Firestore field values
  revenueGraph.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getRevenueGraphListFirestoreData(
  List<RevenueGraphStruct>? revenueGraphs,
) =>
    revenueGraphs?.map((e) => getRevenueGraphFirestoreData(e, true)).toList() ??
    [];
