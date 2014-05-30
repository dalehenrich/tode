as yet unclassified
selectedSource
  ^ self selection == #'source'
    ifTrue: [ self source ]
    ifFalse: [ 
      self selection == #'destination'
        ifTrue: [ self destination ]
        ifFalse: [ self editDefinition ] ]