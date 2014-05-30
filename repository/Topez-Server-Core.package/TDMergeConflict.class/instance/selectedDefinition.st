as yet unclassified
selectedDefinition
  ^ self selection == #'source'
    ifTrue: [ self conflict localDefinition ]
    ifFalse: [ 
      self selection == #'destination'
        ifTrue: [ self conflict remoteDefinition ]
        ifFalse: [ self editDefinition ] ]