as yet unclassified
printName
    self parent == nil
        ifTrue: [ ^ '' ].
    ^ self isLeaf
        ifTrue: [ self name , self extension ]
        ifFalse: [ self name , self class directoryExtension ]