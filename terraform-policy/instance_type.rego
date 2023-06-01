package terraform
 
import input.tfplan as tfplan
 
array_contains(arr, elem) {
  arr[_] = elem
}
 
it_types = [
  "t2",
  "t3",
]
 
deny[reason] {
  it := split(resource_changes[_].change.after.instance_type,.)[0]
  not array_contains(it_types,it)
  reason := sprintf("Instance type %s not allowed.",[it])
}
