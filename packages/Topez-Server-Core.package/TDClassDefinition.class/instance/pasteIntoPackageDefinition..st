as yet unclassified
pasteIntoPackageDefinition: aTDPackageDefinition
  "add class to package"

  self theClass category: aTDPackageDefinition packageName.
  ^ true