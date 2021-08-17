@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'ZJA View 1'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
  serviceQuality: #X,
  sizeCategory: #S,
  dataClass: #MIXED
}
define view entity zja_test_view1
  as select from zja_test
  
  association to zja_test_view2 as _assoc1 
                      on zja_test.field =  _assoc1.field
{
  _assoc1,
  field
}
