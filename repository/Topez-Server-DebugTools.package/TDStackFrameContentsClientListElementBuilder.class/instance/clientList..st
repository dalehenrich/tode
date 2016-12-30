as yet unclassified
clientList: listElement
  | max ar items elementNames specialNames displayPolicy frameElementNames |
  items := OrderedCollection new.
  max := 0.
  specialNames := #('.').
  frameElementNames := self object elementNodeNames asOrderedCollection.
  (frameElementNames includes: 'self')
    ifTrue: [ frameElementNames remove: 'self'.
      frameElementNames addFirst: 'self' ]
    ifFalse: [ (frameElementNames includes: '(self)')
        ifTrue: [ frameElementNames remove: '(self)'.
          frameElementNames addFirst: '(self)' ] ].
  elementNames := specialNames , frameElementNames.
  elementNames do: [ :elementName | max := max max: elementName size ].
  ar := OrderedCollection new.
  max := max + 1.
  displayPolicy := listElement displayPolicy.
  elementNames
    do: [ :elementName | | object parentObject itemObject stream label editorAspect |
      stream := TextStream on: Text new.
      stream
        nextPutAll: elementName;
        space: max - elementName size;
        nextPutAll: '-> '.
      editorAspect := listElement aspect.
      (specialNames includes: elementName)
        ifTrue: [ elementName = '.'
            ifTrue: [ label := elementName.
              parentObject := nil.
              itemObject := object := self object ].
          elementName = '..'
            ifTrue: [  ] ]
        ifFalse: [ parentObject := self object.
          itemObject := object := self object
            objectFor: elementName
            ifAbsent: [ self error: 'missing element' ].
          elementName = '(sender)'
            ifTrue: [ editorAspect := #'contents' ] ].
      items add: ((TDClientListItemAttributes
            object: itemObject
            parent: parentObject
            aspect: editorAspect
            list: listElement parentList)
            label: label;
            yourself).
      displayPolicy stream: stream.
      object displayOnPolicy: displayPolicy.
      ar add: stream contents asString ].
  listElement ~~ nil
    ifTrue: [ listElement itemCache: items ].
  ^ ar -> nil