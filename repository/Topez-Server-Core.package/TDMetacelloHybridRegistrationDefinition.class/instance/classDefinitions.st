actions
classDefinitions
  "include both configuration and baseline classes"

  | classDefs |
  self halt.
  classDefs := {(TDClassDefinition className: self projectSpec className)}.
  classDefs
    addAll:
      (TDConfigurationDefinition new projectSpec: self projectSpec) classDefinitions.
  ^ classDefs