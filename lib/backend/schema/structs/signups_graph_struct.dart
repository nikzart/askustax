// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class SignupsGraphStruct extends FFFirebaseStruct {
  SignupsGraphStruct({
    int? dates,
    int? count,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _dates = dates,
        _count = count,
        super(firestoreUtilData);

  // "dates" field.
  int? _dates;
  int get dates => _dates ?? 0;
  set dates(int? val) => _dates = val;

  void incrementDates(int amount) => dates = dates + amount;

  bool hasDates() => _dates != null;

  // "count" field.
  int? _count;
  int get count => _count ?? 0;
  set count(int? val) => _count = val;

  void incrementCount(int amount) => count = count + amount;

  bool hasCount() => _count != null;

  static SignupsGraphStruct fromMap(Map<String, dynamic> data) =>
      SignupsGraphStruct(
        dates: castToType<int>(data['dates']),
        count: castToType<int>(data['count']),
      );

  static SignupsGraphStruct? maybeFromMap(dynamic data) => data is Map
      ? SignupsGraphStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'dates': _dates,
        'count': _count,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'dates': serializeParam(
          _dates,
          ParamType.int,
        ),
        'count': serializeParam(
          _count,
          ParamType.int,
        ),
      }.withoutNulls;

  static SignupsGraphStruct fromSerializableMap(Map<String, dynamic> data) =>
      SignupsGraphStruct(
        dates: deserializeParam(
          data['dates'],
          ParamType.int,
          false,
        ),
        count: deserializeParam(
          data['count'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'SignupsGraphStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SignupsGraphStruct &&
        dates == other.dates &&
        count == other.count;
  }

  @override
  int get hashCode => const ListEquality().hash([dates, count]);
}

SignupsGraphStruct createSignupsGraphStruct({
  int? dates,
  int? count,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    SignupsGraphStruct(
      dates: dates,
      count: count,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

SignupsGraphStruct? updateSignupsGraphStruct(
  SignupsGraphStruct? signupsGraph, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    signupsGraph
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addSignupsGraphStructData(
  Map<String, dynamic> firestoreData,
  SignupsGraphStruct? signupsGraph,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (signupsGraph == null) {
    return;
  }
  if (signupsGraph.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && signupsGraph.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final signupsGraphData =
      getSignupsGraphFirestoreData(signupsGraph, forFieldValue);
  final nestedData =
      signupsGraphData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = signupsGraph.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getSignupsGraphFirestoreData(
  SignupsGraphStruct? signupsGraph, [
  bool forFieldValue = false,
]) {
  if (signupsGraph == null) {
    return {};
  }
  final firestoreData = mapToFirestore(signupsGraph.toMap());

  // Add any Firestore field values
  signupsGraph.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getSignupsGraphListFirestoreData(
  List<SignupsGraphStruct>? signupsGraphs,
) =>
    signupsGraphs?.map((e) => getSignupsGraphFirestoreData(e, true)).toList() ??
    [];
