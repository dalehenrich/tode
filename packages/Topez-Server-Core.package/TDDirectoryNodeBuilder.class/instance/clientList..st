as yet unclassified
clientList: listElement
  | components max ar items |
  items := Array new.
  components := Array new.
  max := 'parent' size.
  components
    add:
      {'.'.
      (self object tzNodeDisplay: 80 compacted: true)}.
  items add: self object.
  self object parent ~~ nil
    ifTrue: [ 
      components
        add:
          {'..'.
          (self object parent tzNodeDisplay: 80 compacted: true)}.
      items add: self parent ].
  self object
    childrenAndNamesDo: [ :child :nameText | 
      | stream |
      max := max max: nameText size.
      stream := TextStream on: Text new.
      child dotSelfObject tzNodeDisplayOn: stream limit: 80 compacted: true.
      components
        add:
          {nameText.
          (stream contents)}.
      items add: child ].
  ar := Array new.
  max := max + 1.
  components
    do: [ :compAr | 
      | stream |
      stream := TextStream on: Text new.
      stream
        nextPutAll: (compAr at: 1);
        space: max - (compAr at: 1) size;
        nextPutAll: '-> ';
        nextPutAll: (compAr at: 2).
      ar add: stream contents asString ].
  listElement ifNotNil: [ listElement itemCache: items ].
  ^ ar