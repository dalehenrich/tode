as yet unclassified
clientContentsList: listElement
  | max ar items elementNames specialNames |
  items := Array new.
  max := 0.
  specialNames := #('.' '..').
  elementNames := specialNames , self elementNodeNames.
  elementNames do: [ :elementName | max := max max: elementName size ].
  ar := Array new.
  max := max + 1.
  elementNames
    do: [ :elementName | 
      | object stream |
      stream := TextStream on: Text new.
      stream
        nextPutAll: elementName;
        space: max - elementName size;
        nextPutAll: '-> '.
      object := (specialNames includes: elementName)
        ifTrue: [ 
          elementName = '.'
            ifTrue: [ self object ]
            ifFalse: [ self object stack ] ]
        ifFalse: [ self object objectFor: elementName ifAbsent: [ self error: 'missing element' ] ].
      items add: object.
      object tzNodeDisplayOn: stream limit: 80 compacted: true.
      ar add: stream contents asString ].
  listElement ~~ nil
    ifTrue: [ listElement itemCache: items ].
  ^ ar