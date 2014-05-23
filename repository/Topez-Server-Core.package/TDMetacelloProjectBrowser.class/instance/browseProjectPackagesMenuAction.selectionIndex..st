menu actions
browseProjectPackagesMenuAction: listElement selectionIndex: selectionIndex
  | registration block mcTool |
  selectionIndex = 0
    ifTrue: [ ^ false ].
  registration := self projects at: selectionIndex.
  block := [ 
  registration workingCopies asArray
    sorted: [ :a :b | a packageName <= b packageName ] ].
  mcTool := self mcTool.
  mcTool
    mcBrowseWorkingCopies: block
    parentBuilder: nil
    windowLocation: #'app3'
    windowId: nil
    label: 'Packages for ' , registration projectName.
  ^ true