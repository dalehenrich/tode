as yet unclassified
skipOverEditFor: listElement at: selectionIndex
  | def |
  def := (listElement itemCache at: selectionIndex) object.
  (def selectNextMatch: listElement topez)
    ifFalse: [ 
      "no more matches, select next list element"
      ^ #'incrementListIndex' ].
  ^ nil