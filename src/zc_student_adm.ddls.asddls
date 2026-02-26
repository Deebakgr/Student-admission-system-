@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@Endusertext: {
  Label: '###GENERATED Core Data Service Entity'
}
@Objectmodel: {
  Sapobjectnodetype.Name: 'ZSTUDENT_ADM000'
}
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZC_STUDENT_ADM
  provider contract TRANSACTIONAL_QUERY
  as projection on ZR_STUDENT_ADM
  association [1..1] to ZR_STUDENT_ADM as _BaseEntity on $projection.STUDENTUUID = _BaseEntity.STUDENTUUID
{
  key StudentUUID,
  StudentID,
  FirstName,
  LastName,
  DateOfBirth,
  Email,
  PhoneNumber,
  CourseApplied,
  AdmissionStatus,
  @Semantics: {
    User.Createdby: true
  }
  CreatedBy,
  @Semantics: {
    Systemdatetime.Createdat: true
  }
  CreatedAt,
  @Semantics: {
    User.Localinstancelastchangedby: true
  }
  LocalLastChangedBy,
  @Semantics: {
    Systemdatetime.Localinstancelastchangedat: true
  }
  LocalLastChangedAt,
  @Semantics: {
    Systemdatetime.Lastchangedat: true
  }
  LastChangedAt,
  _BaseEntity
}
