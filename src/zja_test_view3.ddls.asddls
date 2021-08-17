@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'ZJA View 3'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
  serviceQuality: #X,
  sizeCategory: #S,
  dataClass: #MIXED
}
define view entity zja_test_view3 
  as select from zja_test_view1
{
  _assoc1.field
}
