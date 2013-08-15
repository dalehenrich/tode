as yet unclassified
performEditFor: listElement at: selectionIndex
  | def |
  def := (listElement itemCache at: selectionIndex) object.
  (def replaceMatchWith: self replacementString topez: listElement topez)
    ifFalse: [ 
      "no more matches, select next list element"
      ^ #'incrementListIndex' ].
  ^ nil