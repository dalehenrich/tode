menu actions
editProjectFileMenuAction: listElement selectionIndex: selectionIndex
  | registration |
  selectionIndex = 0
    ifTrue: [ ^ false ].
  registration := self projects at: selectionIndex.
  self projectTool projectBrowseProjectEntryFor: registration.
  ^ true