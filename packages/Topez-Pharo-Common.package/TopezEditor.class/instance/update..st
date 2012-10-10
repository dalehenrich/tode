updating
update: aspect
    aspect == #'listIndex'
        ifTrue: [ 
            self listEditor listIndex
                ifNotNil: [ :listIndex | 
                    listIndex < 1
                        ifTrue: [ ^ self ].
                    (self listEditor list at: listIndex) asTopezNative singleClick: self topez from: self ] ].
    aspect == #'listDoubleClick'
        ifTrue: [ 
            self listEditor listIndex
                ifNotNil: [ :listIndex | 
                    listIndex < 1
                        ifTrue: [ ^ self ].
                    (self listEditor list at: listIndex) asTopezNative doubleClick: self topez from: self ] ]