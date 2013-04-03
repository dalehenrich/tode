as yet unclassified
selectMethod: aGsNMethod topez: topez
  | cl selector packageName |
  cl := aGsNMethod inClass.
  selector := aGsNMethod selector.
  packageName := cl categoryOfSelector: selector.
  (packageName beginsWith: '*')
    ifFalse: [ ^ TDClassDefinition selectClassNamed: cl name topez: topez ].
  self updatePackageAndConfigFor: packageName topez: topez