accessing
list
  | oopType stonString |
  firstList
    ifNotNil: [ 
      | list |
      list := firstList.
      firstList := nil.
      ^ list ].
  ^ self topez getListForClientListElement: self