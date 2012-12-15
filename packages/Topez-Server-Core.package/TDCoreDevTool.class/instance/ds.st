as yet unclassified
ds
    | node stream count |
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
    count := 0.
    node
        childrenDo: [ :child | 
            stream tab.
            count := count + 1.
            (self listLimit > 0 and: [ count > self listLimit ])
                ifTrue: [ 
                    stream
                        nextPutAll: '...';
                        cr.
                    ^ stream contents ].
            node
                renderNameText: child name , (node elementExtension: child name)
                textAttributes: (node elementRenderNameTextAttributes: child name)
                on: stream.
            stream nextPutAll: ' -> '.
            child dotSelfObject tzNodeDisplayOn: stream.
            stream cr ].
    ^ stream contents