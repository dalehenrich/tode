as yet unclassified
packageOfMethodDefinition: aMethodDefinition
  | cls selector packageName |
  cls := aMethodDefinition theBehavior.
  selector := aMethodDefinition selector.
  packageName := cls categoryOfSelector: selector.
  (packageName beginsWith: '*')
    ifFalse: [ ^ aMethodDefinition asClassDefinition packageOf ].
  ^ TDPackageList current definitionList
    detect: [ :def | self category: packageName matches: def packageName ]
    ifNone: [ nil ]