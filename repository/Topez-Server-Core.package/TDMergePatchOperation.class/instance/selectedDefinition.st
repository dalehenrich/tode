as yet unclassified
selectedDefinition
  ^ self selection == #'local'
    ifTrue: [ self operation baseDefinition ]
    ifFalse: [ 
      self selection == #'remote'
        ifTrue: [ self operation targetDefinition ]
        ifFalse: [ self editDefinition ] ]