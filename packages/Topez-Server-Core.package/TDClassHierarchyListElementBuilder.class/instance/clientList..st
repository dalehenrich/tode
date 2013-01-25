as yet unclassified
clientList: listElement
  | items ar |
  items := Array new.
  ar := Array new.
  self
    classHierarchy: [ :cl :indents | 
      | stream |
      stream := WriteStream on: String new.
      stream
        space: (indents at: cl);
        nextPutAll: cl name asString.
      stream contents.
      ar add: stream contents asText allBold.
      items add: (TDClientListItemAttributes object: cl name parent: nil aspect: listElement aspect) ].
  listElement ~~ nil
    ifTrue: [ listElement itemCache: items ].
  ^ ar