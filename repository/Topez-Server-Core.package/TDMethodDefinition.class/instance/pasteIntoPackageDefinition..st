as yet unclassified
pasteIntoPackageDefinition: aTDPackageDefinition
  "add method to package"

  self appEnv
    classify: self selector
    under: aTDPackageDefinition methodCategoryName
    for: self theBehavior.
  ^ true