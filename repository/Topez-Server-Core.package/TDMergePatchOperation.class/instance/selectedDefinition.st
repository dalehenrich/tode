as yet unclassified
selectedDefinition
  ^ self selection == #'source'
    ifTrue: [ self operation baseDefinition ]
    ifFalse: [ 
      self selection == #'destination'
        ifTrue: [ self operation targetDefinition ]
        ifFalse: [ self editDefinition ] ]