menu actions
browsePackageMenuAction: clientElement class: cls
  | packageDef |
  packageDef := cls asTDClassDefinition packageOf.
  (self browseTool: clientElement)
    browseClassesInPackage: packageDef packageName.
  ^ true