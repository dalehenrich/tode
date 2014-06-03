menu actions
browseProjectDirtyPackagesMenuAction: listElement selectionIndex: selectionIndex
  | registration block mcTool |
  selectionIndex = 0
    ifTrue: [ ^ false ].
  registration := self projects at: selectionIndex.
  block := [ 
  | wcs |
  wcs := registration workingCopies asArray
    sorted: [ :a :b | a packageName <= b packageName ].
  wcs select: [ :wc | wc modified ] ].
  mcTool := self mcTool.
  mcTool
    mcBrowseWorkingCopies: block
    parentBuilder: nil
    windowLocation: #'app3'
    windowId: nil
    label: 'Dirty Packages for ' , registration projectName.
  ^ true