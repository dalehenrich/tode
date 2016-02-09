menu actions
browseProjectClassesMenuAction: listElement selectionIndex: selectionIndex
  | registration |
  selectionIndex = 0
    ifTrue: [ ^ false ].
  registration := self projects at: selectionIndex.
  self projectTool projectBrowseProjectClassesFor: registration.
  ^ true