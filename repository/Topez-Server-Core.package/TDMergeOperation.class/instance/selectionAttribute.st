as yet unclassified
selectionAttribute
  ^ self resolved
    ifTrue: [ 
      self selection == #'destination'
        ifTrue: [ #'underlined' ]
        ifFalse: [ 
          self selection == #'source'
            ifTrue: [ #'normal' ]
            ifFalse: [ #'italic' ] ] ]
    ifFalse: [ #'bold' ]