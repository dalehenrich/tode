as yet unclassified
childNamed: childName addIfAbsent: addIfAbsent
    ^ self contents
        at: childName
        ifAbsent: [ 
            addIfAbsent
                ifFalse: [ ^ nil ].
            self addChildNode: (self class new name: childName) ]