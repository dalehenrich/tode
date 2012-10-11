updating
update: aspect
    aspect == #'listIndex'
        ifTrue: [ 
            self listEditor listIndex
                ifNotNil: [ :listIndex | 
                    | elementProxy clickBlock |
                    listIndex < 1
                        ifTrue: [ ^ self ].
                    elementProxy := self listEditor list at: listIndex.
                    clickBlock := TZProxyObject clickBlocks
                        at: #'singleClick'
                        forClass: elementProxy className
                        ifAbsent: [ ^ self ].
                    clickBlock value: elementProxy value: self topez value: self ] ]