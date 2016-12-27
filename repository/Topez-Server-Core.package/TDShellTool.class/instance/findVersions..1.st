find
findVersions
  "
  browse|find versions <method-spec>
"

  | list methodSpec |
  methodSpec := subArguments at: 1.
  list := self findVersions: methodSpec.
  ^ self filterSelectList: list