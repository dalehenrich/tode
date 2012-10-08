updating
update: aspect
    aspect == #'listIndex'
        ifTrue: [ 
            self listEditor listIndex
                ifNotNil: [ :listIndex | 
                    | classElement |
                    classElement := self listEditor list at: listIndex.
                    self topez setClass: classElement elementName ] ].
    aspect == #'listDoubleClick'
        ifTrue: [ self listEditor listIndex ifNotNil: [ :listIndex | (self listEditor list at: listIndex) doubleClick: self topez ] ]