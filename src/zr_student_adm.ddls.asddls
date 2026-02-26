@AccessControl.authorizationCheck: #MANDATORY
@Metadata.allowExtensions: true
@ObjectModel.sapObjectNodeType.name: 'ZSTUDENT_ADM000'
@EndUserText.label: '###GENERATED Core Data Service Entity'
define root view entity ZR_STUDENT_ADM
  as select from ZSTUDENT_ADM
{
  key student_uuid as StudentUUID,
  student_id as StudentID,
  first_name as FirstName,
  last_name as LastName,
  date_of_birth as DateOfBirth,
  email as Email,
  phone_number as PhoneNumber,
  course_applied as CourseApplied,
  admission_status as AdmissionStatus,
  @Semantics.user.createdBy: true
  created_by as CreatedBy,
  @Semantics.systemDateTime.createdAt: true
  created_at as CreatedAt,
  @Semantics.user.localInstanceLastChangedBy: true
  local_last_changed_by as LocalLastChangedBy,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  local_last_changed_at as LocalLastChangedAt,
  @Semantics.systemDateTime.lastChangedAt: true
  last_changed_at as LastChangedAt
}
