menu actions
browseProjectMenuAction: clientElement class: cls
  | configurationDef |
  configurationDef := (TDClassDefinition className: cls name) configurationOf.
  (self browseTool: clientElement)
    browseClassesInProject: configurationDef configurationName.
  ^ true