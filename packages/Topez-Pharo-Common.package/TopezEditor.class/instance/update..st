updating
update: aspect
    aspect == #'listIndex'
        ifTrue: [ 
            self listEditor listIndex
                ifNotNil: [ :listIndex | 
                    | element |
                    element := self listEditor list at: listIndex.
                    self topez setClass: element elementClassName ] ].
    aspect == #'listDoubleClick'
        ifTrue: [ 
            self listEditor listIndex
                ifNotNil: [ :listIndex | (self listEditor list at: listIndex) doubleClick: self topez from: self ] ]