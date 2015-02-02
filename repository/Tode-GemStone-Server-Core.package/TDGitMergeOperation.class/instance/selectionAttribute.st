as yet unclassified
selectionAttribute
  ^ self resolved
    ifTrue: [ 
      (self selection == #'us' or: [ selection == #'them' ])
        ifTrue: [ 
          self selectedSourceRaw isNil
            ifTrue: [ #'struckOut' ]
            ifFalse: [ 
              self isConflict
                ifTrue: [ #'underlined' ]
                ifFalse: [ #'normal' ] ] ]
        ifFalse: [ 
          self selectedSourceRaw isNil
            ifTrue: [ #'struckOut' ]
            ifFalse: [ 
              self isConflict
                ifTrue: [ #'italic' ]
                ifFalse: [ #'normal' ] ] ] ]
    ifFalse: [ #'bold' ]