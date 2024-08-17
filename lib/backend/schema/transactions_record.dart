import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TransactionsRecord extends FirestoreRecord {
  TransactionsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "amount" field.
  double? _amount;
  double get amount => _amount ?? 0.0;
  bool hasAmount() => _amount != null;

  // "service" field.
  DocumentReference? _service;
  DocumentReference? get service => _service;
  bool hasService() => _service != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "invoiceNo" field.
  int? _invoiceNo;
  int get invoiceNo => _invoiceNo ?? 0;
  bool hasInvoiceNo() => _invoiceNo != null;

  // "userName" field.
  String? _userName;
  String get userName => _userName ?? '';
  bool hasUserName() => _userName != null;

  // "isService" field.
  bool? _isService;
  bool get isService => _isService ?? false;
  bool hasIsService() => _isService != null;

  // "serviceName" field.
  String? _serviceName;
  String get serviceName => _serviceName ?? '';
  bool hasServiceName() => _serviceName != null;

  // "isSubscription" field.
  bool? _isSubscription;
  bool get isSubscription => _isSubscription ?? false;
  bool hasIsSubscription() => _isSubscription != null;

  // "subPlan" field.
  String? _subPlan;
  String get subPlan => _subPlan ?? '';
  bool hasSubPlan() => _subPlan != null;

  // "paidOn" field.
  DateTime? _paidOn;
  DateTime? get paidOn => _paidOn;
  bool hasPaidOn() => _paidOn != null;

  void _initializeFields() {
    _user = snapshotData['user'] as DocumentReference?;
    _amount = castToType<double>(snapshotData['amount']);
    _service = snapshotData['service'] as DocumentReference?;
    _status = snapshotData['status'] as String?;
    _invoiceNo = castToType<int>(snapshotData['invoiceNo']);
    _userName = snapshotData['userName'] as String?;
    _isService = snapshotData['isService'] as bool?;
    _serviceName = snapshotData['serviceName'] as String?;
    _isSubscription = snapshotData['isSubscription'] as bool?;
    _subPlan = snapshotData['subPlan'] as String?;
    _paidOn = snapshotData['paidOn'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('transactions');

  static Stream<TransactionsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TransactionsRecord.fromSnapshot(s));

  static Future<TransactionsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TransactionsRecord.fromSnapshot(s));

  static TransactionsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TransactionsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TransactionsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TransactionsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TransactionsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TransactionsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTransactionsRecordData({
  DocumentReference? user,
  double? amount,
  DocumentReference? service,
  String? status,
  int? invoiceNo,
  String? userName,
  bool? isService,
  String? serviceName,
  bool? isSubscription,
  String? subPlan,
  DateTime? paidOn,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user': user,
      'amount': amount,
      'service': service,
      'status': status,
      'invoiceNo': invoiceNo,
      'userName': userName,
      'isService': isService,
      'serviceName': serviceName,
      'isSubscription': isSubscription,
      'subPlan': subPlan,
      'paidOn': paidOn,
    }.withoutNulls,
  );

  return firestoreData;
}

class TransactionsRecordDocumentEquality
    implements Equality<TransactionsRecord> {
  const TransactionsRecordDocumentEquality();

  @override
  bool equals(TransactionsRecord? e1, TransactionsRecord? e2) {
    return e1?.user == e2?.user &&
        e1?.amount == e2?.amount &&
        e1?.service == e2?.service &&
        e1?.status == e2?.status &&
        e1?.invoiceNo == e2?.invoiceNo &&
        e1?.userName == e2?.userName &&
        e1?.isService == e2?.isService &&
        e1?.serviceName == e2?.serviceName &&
        e1?.isSubscription == e2?.isSubscription &&
        e1?.subPlan == e2?.subPlan &&
        e1?.paidOn == e2?.paidOn;
  }

  @override
  int hash(TransactionsRecord? e) => const ListEquality().hash([
        e?.user,
        e?.amount,
        e?.service,
        e?.status,
        e?.invoiceNo,
        e?.userName,
        e?.isService,
        e?.serviceName,
        e?.isSubscription,
        e?.subPlan,
        e?.paidOn
      ]);

  @override
  bool isValidKey(Object? o) => o is TransactionsRecord;
}
