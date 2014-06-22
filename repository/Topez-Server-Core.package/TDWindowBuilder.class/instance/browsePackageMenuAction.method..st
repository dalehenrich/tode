menu actions
browsePackageMenuAction: clientElement method: aTDMethodDefinition
  | packageDef |
  packageDef := aTDMethodDefinition packageOf.
  (self browseTool: clientElement)
    browseClassesInPackage: packageDef packageName.
  ^ true