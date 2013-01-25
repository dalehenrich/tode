as yet unclassified
printName
  self parent == nil
    ifTrue: [ 
      self name == nil
        ifTrue: [ ^ '' ]
        ifFalse: [ ^ self name ] ].
  ^ self name , self extension