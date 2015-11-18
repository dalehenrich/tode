menu actions
browseProjectDirtyPackagesMenuAction: listElement selectionIndex: selectionIndex
  | registration |
  selectionIndex = 0
    ifTrue: [ ^ false ].
  registration := self projects at: selectionIndex.
  self projectTool projectBrowseProjectDirtyPackagesFor: registration.
  ^ true