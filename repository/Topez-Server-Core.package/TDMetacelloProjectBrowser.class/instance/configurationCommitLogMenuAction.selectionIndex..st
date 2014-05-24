menu actions (configuration)
configurationCommitLogMenuAction: listElement selectionIndex: selectionIndex
  | registration wc |
  selectionIndex = 0
    ifTrue: [ ^ false ].
  registration := self projects at: selectionIndex.
  wc := registration projectSpec projectPackage workingCopy.
  self mcTool
    mcBrowseVersionInfoFor: wc
    parentBuilder: nil
    windowId: nil
    label: 'Commit log for ' , registration name.
  ^ true