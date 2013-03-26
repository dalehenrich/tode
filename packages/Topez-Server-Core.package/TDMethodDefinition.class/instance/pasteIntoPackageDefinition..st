as yet unclassified
pasteIntoPackageDefinition: aTDPackageDefinition
  "add method to package"

  self theBehavior
    classify: self selector
    under: aTDPackageDefinition methodCategoryName.
  ^ true