menu actions
browsePackageMenuAction: clientElement class: cls
  | packageDef |
  packageDef := (TDClassDefinition className: cls name) packageOf.
  (self browseTool: clientElement)
    browseClassesInPackage: packageDef packageName.
  ^ true