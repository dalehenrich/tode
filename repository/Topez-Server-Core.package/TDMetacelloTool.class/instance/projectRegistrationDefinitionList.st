private
projectRegistrationDefinitionList
  | map |
  map := self projectRegistrationDefinitionMap.
  ^ self sortRegistrationList: map values asArray