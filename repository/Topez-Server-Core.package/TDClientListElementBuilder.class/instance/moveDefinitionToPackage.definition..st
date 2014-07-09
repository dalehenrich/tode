menu actions
moveDefinitionToPackage: listElement definition: definition
  | mcTool wcList packageNames packageName |
  mcTool := listElement topez toolInstanceFor: 'mc'.
  wcList := mcTool findMatchingPackages: '' topez: listElement topez.
  packageNames := (wcList sort: [ :a :b | a packageName < b packageName ])
    collect: [ :wc | wc packageName ].
  packageName := (GsChoiceInteraction
    prompt: 'Choose a destination package'
    labels: packageNames
    values: packageNames) signal.
  packageName ifNil: [ ^ false ].
  definition moveToPackageNamed: packageName.
  ^ #'refreshList'