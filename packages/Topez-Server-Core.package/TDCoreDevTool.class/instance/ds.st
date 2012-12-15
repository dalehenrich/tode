as yet unclassified
ds
    | node stream |
    node := tokens size = 1
        ifTrue: [ topez currentNode ]
        ifFalse: [ topez lookup: (tokens at: 2) ].
    stream := TextStream on: Text new.
    node isLeaf
        ifTrue: [ 
            stream
                nextPutAll: (node printString , ':') asText allBold;
                cr;
                nextPutAll: node contents tzNodeDisplay.
            ^ stream contents ].
    stream
        nextPutAll: node printString asText allBold;
        nextPutAll: ' ('.
    node dotSelfObject tzNodeDisplayOn: stream.
    stream
        nextPutAll: '):';
        cr.
    node
        childrenDo: [ :child | 
            stream tab.
            node
                renderNameText: child name , (node elementExtension: child name)
                textAttributes: (node elementRenderNameTextAttributes: child name)
                on: stream.
            stream nextPutAll: ' -> '.
            child dotSelfObject tzNodeDisplayOn: stream.
            stream cr ].
    ^ stream contents