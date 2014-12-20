accessing
findMatchingPathFor: aPath
  ^ aPath isEmpty
    ifTrue: [ self currentNode findMatchingPathFor: '' with: self ]
    ifFalse: [ 
      (aPath = '.' or: [ aPath = '~' or: [ aPath = '@' ] ])
        ifTrue: [ 
          {aPath.
          #('').
          '/'.
          ''} ]
        ifFalse: [ 
          ((aPath beginsWith: '/') or: [ aPath beginsWith: '~' ])
            ifTrue: [ (self baseNodeFor: aPath) findMatchingPathFor: aPath with: self ]
            ifFalse: [ 
              (aPath beginsWith: '@')
                ifTrue: [ 
                  | dirPath tabCompletion |
                  dirPath := aPath copyFrom: 2 to: aPath size.
                  tabCompletion := self findMatchingPathFor: dirPath.
                  tabCompletion at: 1 put: '@' , (tabCompletion at: 1).
                  tabCompletion ]
                ifFalse: [ self currentNode findMatchingPathFor: aPath with: self ] ] ] ]