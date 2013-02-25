as yet unclassified
packageOfClassDefinition: aClassDefinition
  | cls packageName |
  cls := Smalltalk classNamed: aClassDefinition className.
  packageName := cls category.
  ^ TDPackageList current definitionList
    detect: [ :def | self category: packageName matches: def packageName ]
    ifNone: [ nil ]