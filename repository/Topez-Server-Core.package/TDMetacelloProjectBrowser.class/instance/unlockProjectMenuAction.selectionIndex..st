menu actions (baseline)
unlockProjectMenuAction: listElement selectionIndex: selectionIndex
  | registration |
  selectionIndex = 0
    ifTrue: [ ^ false ].
  registration := self projects at: selectionIndex.
  Metacello new
    baseline: registration projectName;
    repository: registration repositoryDescription;
    unlock.
  ^ #'refreshList'