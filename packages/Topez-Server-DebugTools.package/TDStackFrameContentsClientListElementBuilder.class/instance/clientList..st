as yet unclassified
clientList: listElement
  | max ar items elementNames specialNames |
  items := Array new.
  max := 0.
  specialNames := #('.' '..').
  elementNames := specialNames , self object elementNodeNames.
  elementNames do: [ :elementName | max := max max: elementName size ].
  ar := Array new.
  max := max + 1.
  elementNames
    do: [ :elementName | 
      | object objectNode stream |
      stream := TextStream on: Text new.
      stream
        nextPutAll: elementName;
        space: max - elementName size;
        nextPutAll: '-> '.
      (specialNames includes: elementName)
        ifTrue: [ 
          objectNode := object := elementName = '.'
            ifTrue: [ self object ]
            ifFalse: [ self object stack ] ]
        ifFalse: [ 
          | parentNode |
          object := self object objectFor: elementName ifAbsent: [ self error: 'missing element' ].
          parentNode := self objectNodeFor: listElement.
          objectNode := object asTDObjectNode: parentNode topez: listElement topez aspect: listElement aspect ].
      items add: objectNode.
      object tzNodeDisplayOn: stream limit: 80 compacted: true.
      ar add: stream contents asString ].
  listElement ~~ nil
    ifTrue: [ listElement itemCache: items ].
  ^ ar