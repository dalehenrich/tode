menu actions
browseReferencesMenuAction: listElement selectionIndex: selectionIndex
  | cls aVariableOrClassName defs |
  cls := self selectedClass: listElement selectionIndex: selectionIndex.
  aVariableOrClassName := cls name asString.
  ^ self browseReferencesMenuAction: listElement className: aVariableOrClassName