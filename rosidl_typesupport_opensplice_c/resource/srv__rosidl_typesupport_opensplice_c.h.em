// generated from
// rosidl_typesupport_opensplice_c/resource/srv__rosidl_typesupport_opensplice_c.h.em
// generated code does not contain a copyright notice

@# Included from rosidl_typesupport_opensplice_c/resource/idl__rosidl_typesupport_opensplice_c.h.em
@{
header_files = [
    'rosidl_generator_c/service_type_support_struct.h',
    'rosidl_typesupport_interface/macros.h',
    package_name + '/msg/rosidl_typesupport_opensplice_c__visibility_control.h',
]
}@
@[for header_file in header_files]@
@[  if header_file in include_directives]@
// already included above
// @
@[  else]@
@{include_directives.add(header_file)}@
@[  end if]@
#include "@(header_file)"
@[end for]@

#ifdef __cplusplus
extern "C"
{
#endif

ROSIDL_TYPESUPPORT_OPENSPLICE_C_PUBLIC_@(package_name)
const rosidl_service_type_support_t *
  ROSIDL_TYPESUPPORT_INTERFACE__SERVICE_SYMBOL_NAME(
  rosidl_typesupport_opensplice_c,
  @(', '.join(service.structure_type.namespaces)),
  @(service.structure_type.name))();

#ifdef __cplusplus
}
#endif
