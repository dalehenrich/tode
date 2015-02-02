as yet unclassified
selectedSource
  ^ self selection == #'ancestor'
    ifTrue: [ self ancestor ]
    ifFalse: [ 
      self selection == #'us'
        ifTrue: [ self us ]
        ifFalse: [ 
          self selection == #'them'
            ifTrue: [ self them ]
            ifFalse: [ 
              "#'custom'"
              self editDefinition ] ] ]