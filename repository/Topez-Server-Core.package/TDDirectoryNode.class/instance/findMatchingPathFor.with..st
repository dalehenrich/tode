as yet unclassified
findMatchingPathFor: aPathString with: aTopez
  | matches prefix postfix longestMatch |
  self topez: aTopez.
  matches := OrderedCollection new.
  longestMatch := prefix := postfix := ''.
  aPathString isEmpty
    ifTrue: [ self childrenAndNamesDo: [ :child :childName | matches add: childName asString ] ]
    ifFalse: [ 
      | node elementName path |
      path := aPathString findTokens: '/'.
      path size = 0
        ifTrue: [ 
          prefix := aPathString.
          node := self ]
        ifFalse: [ 
          | end nodePath |
          end := (aPathString endsWith: '/')
            ifTrue: [ path size ]
            ifFalse: [ path size - 1 ].
          nodePath := path copyFrom: 1 to: end.
          prefix := (aPathString beginsWith: '/')
            ifTrue: [ '/' ]
            ifFalse: [ '' ].
          nodePath do: [ :each | prefix := prefix , each , '/' ].
          node := self
            lookupPath: nodePath
            ifAbsent: [ 
              ^ {prefix.
              matches.
              postfix.
              longestMatch} ].
          node isLeaf
            ifFalse: [ postfix := '/' ] ].
      node isLeaf
        ifFalse: [ 
          (aPathString endsWith: '/')
            ifTrue: [ 
              node childrenAndNamesDo: [ :child :childName | matches add: childName asString ].
              postfix := '' ]
            ifFalse: [ 
              elementName := path last.
              node
                childrenDo: [ :child | 
                  (child name beginsWith: elementName)
                    ifTrue: [ matches add: child name asString ] ].
              longestMatch := aTopez shortestMatchFor: elementName from: matches.
              matches size > 1
                ifTrue: [ postfix := '' ] ] ] ].
  ^ {prefix.
  matches.
  postfix.
  longestMatch}