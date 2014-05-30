as yet unclassified
selectedOperation
  ^ self selection == #'source'
    ifTrue: [ self operation inverse ]
    ifFalse: [ 
      self selection == #'destination'
        ifTrue: [ self operation ]
        ifFalse: [ 
          (self operation isRemoval or: [ self operation isAddition ])
            ifTrue: [ MCAddition of: self editDefinition ]
            ifFalse: [ MCModification of: self operation baseDefinition to: self editDefinition ] ] ]