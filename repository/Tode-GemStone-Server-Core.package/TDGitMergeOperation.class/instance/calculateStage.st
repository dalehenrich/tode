as yet unclassified
calculateStage
  ancestor
    ifNil: [ 
      us
        ifNil: [ 
          them
            ifNil: [ self error: 'illegal stage, ancestor, us and them nil' ]
            ifNotNil: [ ^ #'adddedByThem' ] ]
        ifNotNil: [ them ifNil: [ ^ #'addedByUs' ] ifNotNil: [ ^ #'addedByBoth' ] ] ]
    ifNotNil: [ 
      us
        ifNil: [ them ifNil: [ ^ #'deletedByBoth' ] ifNotNil: [ ^ #'deletedByUs' ] ]
        ifNotNil: [ them ifNil: [ ^ #'deletedByThem' ] ifNotNil: [ ^ #'modifiedByBoth' ] ] ]