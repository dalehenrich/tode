as yet unclassified
clientListElementBlock
  ^ [ :listElement | 
  | components max ar items |
  items := Array new.
  components := Array new.
  max := 'parent' size.
  components
    add:
      {'.'.
      'self'}.
  items add: self.
  self parent ~~ nil
    ifTrue: [ 
      components
        add:
          {'..'.
          'parent'}.
      items add: self parent ].
  self
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
      ar add: stream contents ].
  listElement itemCache: items.
  STON toString: ar ]