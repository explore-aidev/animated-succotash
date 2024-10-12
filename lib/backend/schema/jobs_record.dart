import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class JobsRecord extends FirestoreRecord {
  JobsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "company" field.
  String? _company;
  String get company => _company ?? '';
  bool hasCompany() => _company != null;

  // "job_offer" field.
  String? _jobOffer;
  String get jobOffer => _jobOffer ?? '';
  bool hasJobOffer() => _jobOffer != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "qualification_details" field.
  String? _qualificationDetails;
  String get qualificationDetails => _qualificationDetails ?? '';
  bool hasQualificationDetails() => _qualificationDetails != null;

  // "contact" field.
  String? _contact;
  String get contact => _contact ?? '';
  bool hasContact() => _contact != null;

  // "company_logo" field.
  String? _companyLogo;
  String get companyLogo => _companyLogo ?? '';
  bool hasCompanyLogo() => _companyLogo != null;

  // "created" field.
  DateTime? _created;
  DateTime? get created => _created;
  bool hasCreated() => _created != null;

  // "country" field.
  String? _country;
  String get country => _country ?? '';
  bool hasCountry() => _country != null;

  // "offer_status" field.
  String? _offerStatus;
  String get offerStatus => _offerStatus ?? '';
  bool hasOfferStatus() => _offerStatus != null;

  // "job_type" field.
  String? _jobType;
  String get jobType => _jobType ?? '';
  bool hasJobType() => _jobType != null;

  // "salary" field.
  String? _salary;
  String get salary => _salary ?? '';
  bool hasSalary() => _salary != null;

  void _initializeFields() {
    _company = snapshotData['company'] as String?;
    _jobOffer = snapshotData['job_offer'] as String?;
    _category = snapshotData['category'] as String?;
    _location = snapshotData['location'] as String?;
    _qualificationDetails = snapshotData['qualification_details'] as String?;
    _contact = snapshotData['contact'] as String?;
    _companyLogo = snapshotData['company_logo'] as String?;
    _created = snapshotData['created'] as DateTime?;
    _country = snapshotData['country'] as String?;
    _offerStatus = snapshotData['offer_status'] as String?;
    _jobType = snapshotData['job_type'] as String?;
    _salary = snapshotData['salary'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('jobs');

  static Stream<JobsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => JobsRecord.fromSnapshot(s));

  static Future<JobsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => JobsRecord.fromSnapshot(s));

  static JobsRecord fromSnapshot(DocumentSnapshot snapshot) => JobsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static JobsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      JobsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'JobsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is JobsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createJobsRecordData({
  String? company,
  String? jobOffer,
  String? category,
  String? location,
  String? qualificationDetails,
  String? contact,
  String? companyLogo,
  DateTime? created,
  String? country,
  String? offerStatus,
  String? jobType,
  String? salary,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'company': company,
      'job_offer': jobOffer,
      'category': category,
      'location': location,
      'qualification_details': qualificationDetails,
      'contact': contact,
      'company_logo': companyLogo,
      'created': created,
      'country': country,
      'offer_status': offerStatus,
      'job_type': jobType,
      'salary': salary,
    }.withoutNulls,
  );

  return firestoreData;
}

class JobsRecordDocumentEquality implements Equality<JobsRecord> {
  const JobsRecordDocumentEquality();

  @override
  bool equals(JobsRecord? e1, JobsRecord? e2) {
    return e1?.company == e2?.company &&
        e1?.jobOffer == e2?.jobOffer &&
        e1?.category == e2?.category &&
        e1?.location == e2?.location &&
        e1?.qualificationDetails == e2?.qualificationDetails &&
        e1?.contact == e2?.contact &&
        e1?.companyLogo == e2?.companyLogo &&
        e1?.created == e2?.created &&
        e1?.country == e2?.country &&
        e1?.offerStatus == e2?.offerStatus &&
        e1?.jobType == e2?.jobType &&
        e1?.salary == e2?.salary;
  }

  @override
  int hash(JobsRecord? e) => const ListEquality().hash([
        e?.company,
        e?.jobOffer,
        e?.category,
        e?.location,
        e?.qualificationDetails,
        e?.contact,
        e?.companyLogo,
        e?.created,
        e?.country,
        e?.offerStatus,
        e?.jobType,
        e?.salary
      ]);

  @override
  bool isValidKey(Object? o) => o is JobsRecord;
}
