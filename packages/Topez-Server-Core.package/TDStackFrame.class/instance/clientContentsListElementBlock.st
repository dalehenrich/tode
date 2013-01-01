as yet unclassified
clientContentsListElementBlock
  ^ [ :listElement | 
  | components max ar items |
  items := Array new.
  components := Array new.
  max := 0.
  self elementNodeNames do: [ :elementName | max := max max: elementName size ].
  ar := Array new.
  max := max + 1.
  self elementNodeNames
    do: [ :elementName | 
      | object stream |
      stream := TextStream on: Text new.
      stream
        nextPutAll: elementName;
        space: max - elementName size;
        nextPutAll: '-> '.
      object := self objectFor: elementName ifAbsent: [ self error: 'missing element' ].
      items add: object.
      object tzNodeDisplayOn: stream limit: 80 compacted: true.
      ar add: stream contents ].
  listElement itemCache: items.
  STON toString: ar ]