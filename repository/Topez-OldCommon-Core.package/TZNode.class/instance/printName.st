as yet unclassified
printName
    self parent == nil
        ifTrue: [ ^ '' ].
    ^ self isLeaf
        ifTrue: [ self name ]
        ifFalse: [ self name , '/' ]