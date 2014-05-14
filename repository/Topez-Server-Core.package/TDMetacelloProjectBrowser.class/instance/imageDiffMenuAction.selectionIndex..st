menu actions
imageDiffMenuAction: listElement selectionIndex: selectionIndex
  | registration patches |
  selectionIndex = 0
    ifTrue: [ ^ false ].
  registration := self projects at: selectionIndex.
  patches := self projectTool projectDiff: registration.
  patches isEmpty
    ifTrue: [ self inform: 'No dirty packages' ].
  ^ #'refreshList'