actions
classDefinitions
  "include both configuration and baseline classes"

  | classDefs |
  classDefs := {(TDClassDefinition className: self projectSpec className).
  (TDClassDefinition className: self baselineProjectSpec className)}.
  classDefs
    addAll:
      (TDConfigurationDefinition new projectSpec: self baselineProjectSpec)
        classDefinitions.
  ^ classDefs