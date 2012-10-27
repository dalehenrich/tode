api
baseNodeFor: aPath
    ^ (aPath beginsWith: '/')
        ifTrue: [ self rootNode ]
        ifFalse: [ self currentNode ]