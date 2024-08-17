import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RecordsRecord extends FirestoreRecord {
  RecordsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "curInvoiceNo" field.
  int? _curInvoiceNo;
  int get curInvoiceNo => _curInvoiceNo ?? 0;
  bool hasCurInvoiceNo() => _curInvoiceNo != null;

  // "totalRevenue" field.
  double? _totalRevenue;
  double get totalRevenue => _totalRevenue ?? 0.0;
  bool hasTotalRevenue() => _totalRevenue != null;

  // "gst" field.
  double? _gst;
  double get gst => _gst ?? 0.0;
  bool hasGst() => _gst != null;

  void _initializeFields() {
    _curInvoiceNo = castToType<int>(snapshotData['curInvoiceNo']);
    _totalRevenue = castToType<double>(snapshotData['totalRevenue']);
    _gst = castToType<double>(snapshotData['gst']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('records');

  static Stream<RecordsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RecordsRecord.fromSnapshot(s));

  static Future<RecordsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RecordsRecord.fromSnapshot(s));

  static RecordsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RecordsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RecordsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RecordsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RecordsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RecordsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRecordsRecordData({
  int? curInvoiceNo,
  double? totalRevenue,
  double? gst,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'curInvoiceNo': curInvoiceNo,
      'totalRevenue': totalRevenue,
      'gst': gst,
    }.withoutNulls,
  );

  return firestoreData;
}

class RecordsRecordDocumentEquality implements Equality<RecordsRecord> {
  const RecordsRecordDocumentEquality();

  @override
  bool equals(RecordsRecord? e1, RecordsRecord? e2) {
    return e1?.curInvoiceNo == e2?.curInvoiceNo &&
        e1?.totalRevenue == e2?.totalRevenue &&
        e1?.gst == e2?.gst;
  }

  @override
  int hash(RecordsRecord? e) =>
      const ListEquality().hash([e?.curInvoiceNo, e?.totalRevenue, e?.gst]);

  @override
  bool isValidKey(Object? o) => o is RecordsRecord;
}
