as yet unclassified
clientList: listElement
  | max ar items elementNames specialNames displayPolicy |
  items := OrderedCollection new.
  max := 0.
  specialNames := #('.').
  elementNames := specialNames , self object elementNodeNames.
  elementNames do: [ :elementName | max := max max: elementName size ].
  ar := OrderedCollection new.
  max := max + 1.
  displayPolicy := listElement displayPolicy.
  elementNames
    do: [ :elementName | 
      | object parentObject itemObject stream label |
      stream := TextStream on: Text new.
      stream
        nextPutAll: elementName;
        space: max - elementName size;
        nextPutAll: '-> '.
      (specialNames includes: elementName)
        ifTrue: [ 
          label := elementName.
          parentObject := nil.
          itemObject := object := self object ]
        ifFalse: [ 
          parentObject := self object.
          object := self object
            objectFor: elementName
            ifAbsent: [ self error: 'missing element' ].
          itemObject := object
            asTDObjectNode: parentObject
            topez: listElement topez
            aspect: #'view' ].
      items
        add:
          ((TDClientListItemAttributes
            object: itemObject
            parent: parentObject
            aspect: listElement aspect)
            label: label;
            yourself).
      displayPolicy stream: stream.
      object displayOnPolicy: displayPolicy.
      ar add: stream contents asString ].
  listElement ~~ nil
    ifTrue: [ listElement itemCache: items ].
  ^ ar