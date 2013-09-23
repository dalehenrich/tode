as yet unclassified
cmdTAction: listElement modifierPressed: modifierPressed selectionIndex: selectionIndex
  "CMD-t - cycle through protocol display options"

  self enableProtocol: self enableProtocol not.
  ^ #'refreshList'