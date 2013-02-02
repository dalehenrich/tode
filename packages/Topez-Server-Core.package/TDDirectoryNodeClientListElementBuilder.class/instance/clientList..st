as yet unclassified
clientList: listElement
  | displayPolicy components max ar items |
  items := Array new.
  components := Array new.
  max := 'parent' size.
  components
    add:
      {'.'.
      (self object tzNodeDisplay: 80 displayOops: listElement topez displayOops compacted: true)}.
  items add: (TDClientListItemAttributes object: self object parent: nil aspect: listElement aspect).
  self object parent ~~ nil
    ifTrue: [ 
      components
        add:
          {'..'.
          (self object parent tzNodeDisplay: 80 displayOops: listElement topez displayOops compacted: true)}.
      items add: (TDClientListItemAttributes object: self object parent parent: nil aspect: listElement aspect) ].
  displayPolicy := listElement topez displayPolicy
    limit: 80;
    compacted: true;
    yourself.
  self object
    childrenAndNamesDo: [ :child :nameText | 
      max := max max: nameText size.
      displayPolicy stream: nil.
      components
        add:
          {nameText.
          (child dotSelfObject displayWith: displayPolicy)}.
      items add: (TDClientListItemAttributes object: child parent: self object aspect: listElement aspect) ].
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