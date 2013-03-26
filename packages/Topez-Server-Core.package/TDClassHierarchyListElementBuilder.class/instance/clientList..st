as yet unclassified
clientList: listElement
  | items ar selectedIndex |
  items := Array new.
  ar := Array new.
  self
    classHierarchy: [ :className :indents | 
      | stream cl |
      cl := (Smalltalk classNamed: className).
      stream := WriteStream on: String new.
      stream
        space: (indents at: className);
        nextPutAll: className asString.
      stream contents.
      ar add: stream contents asText allBold.
      selectedClass == cl
        ifTrue: [ selectedIndex := ar size ].
      items add: (TDClientListItemAttributes object: className parent: nil aspect: listElement aspect) ].
  listElement ~~ nil
    ifTrue: [ 
      listElement itemCache: items.
      listElement selectedIndex: selectedIndex ].
  ^ ar