import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChatMessagesRecord extends FirestoreRecord {
  ChatMessagesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "chat" field.
  DocumentReference? _chat;
  DocumentReference? get chat => _chat;
  bool hasChat() => _chat != null;

  // "text" field.
  String? _text;
  String get text => _text ?? '';
  bool hasText() => _text != null;

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  bool hasTimestamp() => _timestamp != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "video" field.
  String? _video;
  String get video => _video ?? '';
  bool hasVideo() => _video != null;

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

  // "transaction" field.
  DocumentReference? _transaction;
  DocumentReference? get transaction => _transaction;
  bool hasTransaction() => _transaction != null;

  void _initializeFields() {
    _user = snapshotData['user'] as DocumentReference?;
    _chat = snapshotData['chat'] as DocumentReference?;
    _text = snapshotData['text'] as String?;
    _timestamp = snapshotData['timestamp'] as DateTime?;
    _image = snapshotData['image'] as String?;
    _video = snapshotData['video'] as String?;
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _transaction = snapshotData['transaction'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('chat_messages');

  static Stream<ChatMessagesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ChatMessagesRecord.fromSnapshot(s));

  static Future<ChatMessagesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ChatMessagesRecord.fromSnapshot(s));

  static ChatMessagesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ChatMessagesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ChatMessagesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ChatMessagesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ChatMessagesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ChatMessagesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createChatMessagesRecordData({
  DocumentReference? user,
  DocumentReference? chat,
  String? text,
  DateTime? timestamp,
  String? image,
  String? video,
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  DocumentReference? transaction,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user': user,
      'chat': chat,
      'text': text,
      'timestamp': timestamp,
      'image': image,
      'video': video,
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'transaction': transaction,
    }.withoutNulls,
  );

  return firestoreData;
}

class ChatMessagesRecordDocumentEquality
    implements Equality<ChatMessagesRecord> {
  const ChatMessagesRecordDocumentEquality();

  @override
  bool equals(ChatMessagesRecord? e1, ChatMessagesRecord? e2) {
    return e1?.user == e2?.user &&
        e1?.chat == e2?.chat &&
        e1?.text == e2?.text &&
        e1?.timestamp == e2?.timestamp &&
        e1?.image == e2?.image &&
        e1?.video == e2?.video &&
        e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.transaction == e2?.transaction;
  }

  @override
  int hash(ChatMessagesRecord? e) => const ListEquality().hash([
        e?.user,
        e?.chat,
        e?.text,
        e?.timestamp,
        e?.image,
        e?.video,
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.transaction
      ]);

  @override
  bool isValidKey(Object? o) => o is ChatMessagesRecord;
}
