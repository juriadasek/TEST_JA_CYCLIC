@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'ZJA View 2'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
  serviceQuality: #X,
  sizeCategory: #S,
  dataClass: #MIXED
}
define view entity zja_test_view2
  as select from zja_test
  
  association to zja_test_view3 as _assoc2 
                      on zja_test.field =  _assoc2.field 
{
  _assoc2,
  field
}

union
  select from zja_test_view1
  association to zja_test_view3 as _assoc2 
                      on $projection.field =  _assoc2.field 
  {
  _assoc2,
  field
  }
