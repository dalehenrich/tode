menu actions
browseProjectMenuAction: clientElement method: aTDMethodDefinition
  | configurationDef |
  configurationDef := aTDMethodDefinition configurationOf.
  (self browseTool: clientElement)
    browseClassesInProject: configurationDef configurationName.
  ^ true