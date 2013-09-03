as yet unclassified
selectedDefinition
  ^ self selection == #'local'
    ifTrue: [ self conflict localDefinition ]
    ifFalse: [ 
      self selection == #'remote'
        ifTrue: [ self conflict remoteDefinition ]
        ifFalse: [ self editDefinition ] ]