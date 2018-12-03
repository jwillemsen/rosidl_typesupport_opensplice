// generated from rosidl_typesupport_opensplice_cpp/resource/idl__rosidl_typesupport_cpp.hpp.em
// generated code does not contain a copyright notice
@{
from rosidl_cmake import convert_camel_case_to_lower_case_underscore
include_parts = [package_name] + list(interface_path.parents[0].parts) + \
    [convert_camel_case_to_lower_case_underscore(interface_path.stem)]
header_guard_variable = '__'.join([x.upper() for x in include_parts]) + \
    '__ROSIDL_TYPESUPPORT_OPENSPLICE_CPP_HPP_'
}@
#ifndef @(header_guard_variable)
#define @(header_guard_variable)
@{
import sys
#######################################################################
# EmPy template for generating <idl>__rosidl_typesupport_cpp.hpp files
#
# Context:
#  - package_name (string)
#  - content (rosidl_parser.definition.IdlContent result of parsing IDL file)
#  - interface_path (Path relative to the directory named after the package)
#######################################################################

include_directives = set()

#######################################################################
# Handle message
#######################################################################
from rosidl_parser.definition import Message
for message in content.get_elements_of_type(Message):
    print("TEMPLATE for message {}".format(message.structure.type.name), file=sys.stderr)
    TEMPLATE(
        'msg__rosidl_typesupport_opensplice_cpp.hpp.em',
        package_name=package_name, interface_path=interface_path, message=message,
        include_directives=include_directives)

#######################################################################
# Handle service
#######################################################################
from rosidl_parser.definition import Service
for service in content.get_elements_of_type(Service):
    print("TEMPLATE for service {}".format(service.structure_type.name), file=sys.stderr)
    TEMPLATE(
        'srv__rosidl_typesupport_opensplice_cpp.hpp.em',
        package_name=package_name, interface_path=interface_path, service=service,
        include_directives=include_directives)

#######################################################################
# Handle action
#######################################################################
from rosidl_parser.definition import Action
for action in content.get_elements_of_type(Action):
    print("TEMPLATE for action {}".format(action.structure_type.name), file=sys.stderr)
    TEMPLATE(
        'srv__rosidl_typesupport_opensplice_cpp.hpp.em',
        package_name=package_name, interface_path=interface_path, service=action.goal_service,
        include_directives=include_directives)
    TEMPLATE(
        'srv__rosidl_typesupport_opensplice_cpp.hpp.em',
        package_name=package_name, interface_path=interface_path, service=action.result_service,
        include_directives=include_directives)
    TEMPLATE(
        'msg__rosidl_typesupport_opensplice_cpp.hpp.em',
        package_name=package_name, interface_path=interface_path, message=action.feedback,
        include_directives=include_directives)
}@
#endif  // @(header_guard_variable)
