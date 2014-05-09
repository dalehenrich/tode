actions
addToPackage: listElement selectedIndex: selectedIndex
  | repository workingCopies packageNames selectionIndex |
  selectedIndex = 0
    ifTrue: [ ^ false ].
  repository := self repositories at: selectedIndex.
  workingCopies := (MCWorkingCopy allManagers
    reject: [ :wc | wc repositoryGroup includes: repository ])
    sorted: [ :a :b | a name <= b name ].
  packageNames := workingCopies collect: [ :wc | wc name ].
  selectionIndex := (GsChoiceInteraction
    prompt: 'Choose package'
    labels: packageNames
    values: nil) signal.
  selectionIndex ifNil: [ ^ false ].
  workingCopy := workingCopies at: selectionIndex.
  workingCopy repositoryGroup addRepository: repository.
  ^ true