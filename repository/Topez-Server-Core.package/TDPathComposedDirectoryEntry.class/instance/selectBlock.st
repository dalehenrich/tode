accessing
selectBlock
  selectBlock
    ifNil: [ 
      selectBlock := self includes isEmpty
        ifTrue: [ 
          self excludes isEmpty
            ifTrue: [ [ :node | true ] ]
            ifFalse: [ 
              "excludes  defined"
              [ :node | self excludes includes: node name ] ] ]
        ifFalse: [ 
          self excludes isEmpty
            ifTrue: [ 
              "includes  defined"
              [ :node | self includes includes: node name ] ]
            ifFalse: [ 
              "includes and excludes defined"
              [ :node | 
              | nodeName |
              nodeName := node name.
              (self includes includes: nodeName)
                and: [ (self excludes includes: nodeName) not ] ] ] ] ].
  ^ selectBlock