as yet unclassified
clientList: listElement
  | items ar selectedIndex |
  objectBlock
    ifNotNil: [ 
      "force recalculation of list using the objectBlock"
      object := self objectBlock value ].
  items := OrderedCollection new.
  ar := OrderedCollection new.
  self
    classHierarchy: [ :classDef :indents | 
      | stream cl |
      cl := classDef theClass.
      stream := WriteStream on: String new.
      stream
        space: (indents at: classDef);
        nextPutAll: classDef label.
      stream contents.
      ar add: stream contents asText allBold.
      selectedClass == cl
        ifTrue: [ selectedIndex := ar size ].
      items
        add:
          (TDClientListItemAttributes
            object: classDef
            parent: nil
            aspect: listElement aspect) ].
  listElement ~~ nil
    ifTrue: [ listElement itemCache: items ].
  ^ ar -> selectedIndex