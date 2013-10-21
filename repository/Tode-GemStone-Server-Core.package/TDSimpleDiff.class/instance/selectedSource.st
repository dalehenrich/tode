as yet unclassified
selectedSource
  ^ self selection == #'local'
    ifTrue: [ self local ]
    ifFalse: [ 
      self selection == #'remote'
        ifTrue: [ self remote ]
        ifFalse: [ self editDefinition ] ]