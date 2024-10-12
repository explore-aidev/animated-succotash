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

  // "salary_offer" field.
  int? _salaryOffer;
  int get salaryOffer => _salaryOffer ?? 0;
  bool hasSalaryOffer() => _salaryOffer != null;

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

  // "offer_status" field.
  bool? _offerStatus;
  bool get offerStatus => _offerStatus ?? false;
  bool hasOfferStatus() => _offerStatus != null;

  // "premium" field.
  bool? _premium;
  bool get premium => _premium ?? false;
  bool hasPremium() => _premium != null;

  // "created" field.
  DateTime? _created;
  DateTime? get created => _created;
  bool hasCreated() => _created != null;

  // "applicant" field.
  DocumentReference? _applicant;
  DocumentReference? get applicant => _applicant;
  bool hasApplicant() => _applicant != null;

  // "job_creator" field.
  DocumentReference? _jobCreator;
  DocumentReference? get jobCreator => _jobCreator;
  bool hasJobCreator() => _jobCreator != null;

  // "total_visitors" field.
  int? _totalVisitors;
  int get totalVisitors => _totalVisitors ?? 0;
  bool hasTotalVisitors() => _totalVisitors != null;

  // "who_visits" field.
  DocumentReference? _whoVisits;
  DocumentReference? get whoVisits => _whoVisits;
  bool hasWhoVisits() => _whoVisits != null;

  // "country" field.
  String? _country;
  String get country => _country ?? '';
  bool hasCountry() => _country != null;

  void _initializeFields() {
    _company = snapshotData['company'] as String?;
    _jobOffer = snapshotData['job_offer'] as String?;
    _category = snapshotData['category'] as String?;
    _salaryOffer = castToType<int>(snapshotData['salary_offer']);
    _location = snapshotData['location'] as String?;
    _qualificationDetails = snapshotData['qualification_details'] as String?;
    _contact = snapshotData['contact'] as String?;
    _companyLogo = snapshotData['company_logo'] as String?;
    _offerStatus = snapshotData['offer_status'] as bool?;
    _premium = snapshotData['premium'] as bool?;
    _created = snapshotData['created'] as DateTime?;
    _applicant = snapshotData['applicant'] as DocumentReference?;
    _jobCreator = snapshotData['job_creator'] as DocumentReference?;
    _totalVisitors = castToType<int>(snapshotData['total_visitors']);
    _whoVisits = snapshotData['who_visits'] as DocumentReference?;
    _country = snapshotData['country'] as String?;
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
  int? salaryOffer,
  String? location,
  String? qualificationDetails,
  String? contact,
  String? companyLogo,
  bool? offerStatus,
  bool? premium,
  DateTime? created,
  DocumentReference? applicant,
  DocumentReference? jobCreator,
  int? totalVisitors,
  DocumentReference? whoVisits,
  String? country,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'company': company,
      'job_offer': jobOffer,
      'category': category,
      'salary_offer': salaryOffer,
      'location': location,
      'qualification_details': qualificationDetails,
      'contact': contact,
      'company_logo': companyLogo,
      'offer_status': offerStatus,
      'premium': premium,
      'created': created,
      'applicant': applicant,
      'job_creator': jobCreator,
      'total_visitors': totalVisitors,
      'who_visits': whoVisits,
      'country': country,
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
        e1?.salaryOffer == e2?.salaryOffer &&
        e1?.location == e2?.location &&
        e1?.qualificationDetails == e2?.qualificationDetails &&
        e1?.contact == e2?.contact &&
        e1?.companyLogo == e2?.companyLogo &&
        e1?.offerStatus == e2?.offerStatus &&
        e1?.premium == e2?.premium &&
        e1?.created == e2?.created &&
        e1?.applicant == e2?.applicant &&
        e1?.jobCreator == e2?.jobCreator &&
        e1?.totalVisitors == e2?.totalVisitors &&
        e1?.whoVisits == e2?.whoVisits &&
        e1?.country == e2?.country;
  }

  @override
  int hash(JobsRecord? e) => const ListEquality().hash([
        e?.company,
        e?.jobOffer,
        e?.category,
        e?.salaryOffer,
        e?.location,
        e?.qualificationDetails,
        e?.contact,
        e?.companyLogo,
        e?.offerStatus,
        e?.premium,
        e?.created,
        e?.applicant,
        e?.jobCreator,
        e?.totalVisitors,
        e?.whoVisits,
        e?.country
      ]);

  @override
  bool isValidKey(Object? o) => o is JobsRecord;
}
