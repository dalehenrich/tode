as yet unclassified
clientList: listElement
  | displayPolicy components max ar items |
  items := OrderedCollection new.
  components := OrderedCollection new.
  max := 'parent' size.
  displayPolicy := listElement displayPolicy.
  components
    add:
      {'.'.
      (self object dotSelfObject displayWith: displayPolicy)}.
  items
    add:
      (TDClientListItemAttributes
        object: self object
        parent: nil
        aspect: listElement aspect
        listIndex: listElement parentListIndex).
  self object parent ~~ nil
    ifTrue: [ 
      displayPolicy stream: nil.
      components
        add:
          {'..'.
          (self object parent displayWith: displayPolicy)}.
      items
        add:
          (TDClientListItemAttributes
            object: self object parent
            parent: nil
            aspect: listElement aspect
            listIndex: listElement parentListIndex) ].
  self object
    childrenAndNamesDo: [ :child :nameText | 
      max := max max: nameText size.
      displayPolicy stream: nil.
      components
        add:
          {nameText.
          (child dotSelfObject displayWith: displayPolicy)}.
      items
        add:
          (TDClientListItemAttributes
            object: child dotSelfObject
            parent: self object
            aspect: listElement aspect
            listIndex: listElement parentListIndex) ].
  ar := OrderedCollection new.
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