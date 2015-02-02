as yet unclassified
selectedSourceRaw
  ^ self selection == #'ancestor'
    ifTrue: [ ancestor ]
    ifFalse: [ 
      self selection == #'us'
        ifTrue: [ us ]
        ifFalse: [ 
          self selection == #'them'
            ifTrue: [ them ]
            ifFalse: [ 
              "#'custom'"
              editDefinition ] ] ]