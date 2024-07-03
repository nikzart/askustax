import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "shortDescription" field.
  String? _shortDescription;
  String get shortDescription => _shortDescription ?? '';
  bool hasShortDescription() => _shortDescription != null;

  // "last_active_time" field.
  DateTime? _lastActiveTime;
  DateTime? get lastActiveTime => _lastActiveTime;
  bool hasLastActiveTime() => _lastActiveTime != null;

  // "role" field.
  String? _role;
  String get role => _role ?? '';
  bool hasRole() => _role != null;

  // "primary_lang" field.
  String? _primaryLang;
  String get primaryLang => _primaryLang ?? '';
  bool hasPrimaryLang() => _primaryLang != null;

  // "secondary_lang" field.
  String? _secondaryLang;
  String get secondaryLang => _secondaryLang ?? '';
  bool hasSecondaryLang() => _secondaryLang != null;

  // "pan" field.
  String? _pan;
  String get pan => _pan ?? '';
  bool hasPan() => _pan != null;

  // "is_CA" field.
  bool? _isCA;
  bool get isCA => _isCA ?? false;
  bool hasIsCA() => _isCA != null;

  // "is_Client" field.
  bool? _isClient;
  bool get isClient => _isClient ?? false;
  bool hasIsClient() => _isClient != null;

  // "is_Admin" field.
  bool? _isAdmin;
  bool get isAdmin => _isAdmin ?? false;
  bool hasIsAdmin() => _isAdmin != null;

  // "complete_acc" field.
  bool? _completeAcc;
  bool get completeAcc => _completeAcc ?? false;
  bool hasCompleteAcc() => _completeAcc != null;

  // "credits" field.
  int? _credits;
  int get credits => _credits ?? 0;
  bool hasCredits() => _credits != null;

  // "is_Online" field.
  bool? _isOnline;
  bool get isOnline => _isOnline ?? false;
  bool hasIsOnline() => _isOnline != null;

  // "ICAI_regNo" field.
  String? _iCAIRegNo;
  String get iCAIRegNo => _iCAIRegNo ?? '';
  bool hasICAIRegNo() => _iCAIRegNo != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "pinCode" field.
  int? _pinCode;
  int get pinCode => _pinCode ?? 0;
  bool hasPinCode() => _pinCode != null;

  // "state" field.
  String? _state;
  String get state => _state ?? '';
  bool hasState() => _state != null;

  // "verified_CA" field.
  bool? _verifiedCA;
  bool get verifiedCA => _verifiedCA ?? false;
  bool hasVerifiedCA() => _verifiedCA != null;

  // "aadhaar_no" field.
  int? _aadhaarNo;
  int get aadhaarNo => _aadhaarNo ?? 0;
  bool hasAadhaarNo() => _aadhaarNo != null;

  // "district" field.
  String? _district;
  String get district => _district ?? '';
  bool hasDistrict() => _district != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "inActiveChat" field.
  bool? _inActiveChat;
  bool get inActiveChat => _inActiveChat ?? false;
  bool hasInActiveChat() => _inActiveChat != null;

  // "activeChat" field.
  DocumentReference? _activeChat;
  DocumentReference? get activeChat => _activeChat;
  bool hasActiveChat() => _activeChat != null;

  // "services" field.
  List<String>? _services;
  List<String> get services => _services ?? const [];
  bool hasServices() => _services != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _shortDescription = snapshotData['shortDescription'] as String?;
    _lastActiveTime = snapshotData['last_active_time'] as DateTime?;
    _role = snapshotData['role'] as String?;
    _primaryLang = snapshotData['primary_lang'] as String?;
    _secondaryLang = snapshotData['secondary_lang'] as String?;
    _pan = snapshotData['pan'] as String?;
    _isCA = snapshotData['is_CA'] as bool?;
    _isClient = snapshotData['is_Client'] as bool?;
    _isAdmin = snapshotData['is_Admin'] as bool?;
    _completeAcc = snapshotData['complete_acc'] as bool?;
    _credits = castToType<int>(snapshotData['credits']);
    _isOnline = snapshotData['is_Online'] as bool?;
    _iCAIRegNo = snapshotData['ICAI_regNo'] as String?;
    _address = snapshotData['address'] as String?;
    _pinCode = castToType<int>(snapshotData['pinCode']);
    _state = snapshotData['state'] as String?;
    _verifiedCA = snapshotData['verified_CA'] as bool?;
    _aadhaarNo = castToType<int>(snapshotData['aadhaar_no']);
    _district = snapshotData['district'] as String?;
    _location = snapshotData['location'] as String?;
    _inActiveChat = snapshotData['inActiveChat'] as bool?;
    _activeChat = snapshotData['activeChat'] as DocumentReference?;
    _services = getDataList(snapshotData['services']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? shortDescription,
  DateTime? lastActiveTime,
  String? role,
  String? primaryLang,
  String? secondaryLang,
  String? pan,
  bool? isCA,
  bool? isClient,
  bool? isAdmin,
  bool? completeAcc,
  int? credits,
  bool? isOnline,
  String? iCAIRegNo,
  String? address,
  int? pinCode,
  String? state,
  bool? verifiedCA,
  int? aadhaarNo,
  String? district,
  String? location,
  bool? inActiveChat,
  DocumentReference? activeChat,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'shortDescription': shortDescription,
      'last_active_time': lastActiveTime,
      'role': role,
      'primary_lang': primaryLang,
      'secondary_lang': secondaryLang,
      'pan': pan,
      'is_CA': isCA,
      'is_Client': isClient,
      'is_Admin': isAdmin,
      'complete_acc': completeAcc,
      'credits': credits,
      'is_Online': isOnline,
      'ICAI_regNo': iCAIRegNo,
      'address': address,
      'pinCode': pinCode,
      'state': state,
      'verified_CA': verifiedCA,
      'aadhaar_no': aadhaarNo,
      'district': district,
      'location': location,
      'inActiveChat': inActiveChat,
      'activeChat': activeChat,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.shortDescription == e2?.shortDescription &&
        e1?.lastActiveTime == e2?.lastActiveTime &&
        e1?.role == e2?.role &&
        e1?.primaryLang == e2?.primaryLang &&
        e1?.secondaryLang == e2?.secondaryLang &&
        e1?.pan == e2?.pan &&
        e1?.isCA == e2?.isCA &&
        e1?.isClient == e2?.isClient &&
        e1?.isAdmin == e2?.isAdmin &&
        e1?.completeAcc == e2?.completeAcc &&
        e1?.credits == e2?.credits &&
        e1?.isOnline == e2?.isOnline &&
        e1?.iCAIRegNo == e2?.iCAIRegNo &&
        e1?.address == e2?.address &&
        e1?.pinCode == e2?.pinCode &&
        e1?.state == e2?.state &&
        e1?.verifiedCA == e2?.verifiedCA &&
        e1?.aadhaarNo == e2?.aadhaarNo &&
        e1?.district == e2?.district &&
        e1?.location == e2?.location &&
        e1?.inActiveChat == e2?.inActiveChat &&
        e1?.activeChat == e2?.activeChat &&
        listEquality.equals(e1?.services, e2?.services);
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.shortDescription,
        e?.lastActiveTime,
        e?.role,
        e?.primaryLang,
        e?.secondaryLang,
        e?.pan,
        e?.isCA,
        e?.isClient,
        e?.isAdmin,
        e?.completeAcc,
        e?.credits,
        e?.isOnline,
        e?.iCAIRegNo,
        e?.address,
        e?.pinCode,
        e?.state,
        e?.verifiedCA,
        e?.aadhaarNo,
        e?.district,
        e?.location,
        e?.inActiveChat,
        e?.activeChat,
        e?.services
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
