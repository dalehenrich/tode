actions
classDefinitions
  | classDefs |
  classDefs := {(TDClassDefinition className: self projectSpec className)}.
  classDefs
    addAll:
      (TDConfigurationDefinition new projectSpec: self projectSpec) classDefinitions.
  ^ classDefs