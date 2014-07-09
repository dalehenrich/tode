menu actions
fileOutClassMenuAction: listElement selectionIndex: selectionIndex
  | cls |
  cls := self selectedClass: listElement selectionIndex: selectionIndex.
  ServerFileDirectory default
    newFileNamed: cls name asString , '.gs'
    do: [ :fileStream | cls fileOutClassOn: fileStream ].
  ^ true