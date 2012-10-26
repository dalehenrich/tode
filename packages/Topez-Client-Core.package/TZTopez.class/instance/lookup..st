api
lookup: aPath
    ^(aPath beginsWith: '/')
        ifTrue: [ self rootNode lookup: aPath ]
        ifFalse: [ self currentNode lookup: aPath ]