menu actions
browseProjectMenuAction: clientElement class: cls
  | configurationDef |
  configurationDef := cls asTDClassDefinition configurationOf.
  (self browseTool: clientElement)
    browseClassesInProject: configurationDef configurationName.
  ^ true