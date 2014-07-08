menu actions
moveClassToPackageMenuAction: listElement selectionIndex: selectionIndex
  | cls mcTool wcList packageNames packageName |
  cls := self selectedClass: listElement selectionIndex: selectionIndex.
  mcTool := listElement topez toolInstanceFor: 'mc'.
  wcList := mcTool findMatchingPackages: '' topez: listElement topez.
  packageNames := (wcList sort: [ :a :b | a packageName < b packageName ])
    collect: [ :wc | wc packageName ].
  packageName := (GsChoiceInteraction
    prompt: 'Choose a destination package'
    labels: packageNames
    values: packageNames) signal.
  packageName ifNil: [ ^ false ].
  cls category: packageName.
  ^ #'refreshList'