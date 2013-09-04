as yet unclassified
selectionAttribute
  ^ self resolved
    ifTrue: [ 
      self selection == #'remote'
        ifTrue: [ #'underlined' ]
        ifFalse: [ 
          self selection == #'local'
            ifTrue: [ #'normal' ]
            ifFalse: [ #'italic' ] ] ]
    ifFalse: [ #'bold' ]