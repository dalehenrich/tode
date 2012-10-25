updating
update: aspect
    aspect == #'listIndex'
        ifTrue: [ 
            self listEditor listIndex
                ifNotNil: [ :listIndex | 
                    | elementProxy clickBlock |
                    (listIndex < 1 or: [ updating ])
                        ifTrue: [ ^ self ].
                    [ 
                    updating := true.
                    elementProxy := self listEditor list at: listIndex.
                    clickBlock := TZProxyObject clickBlocks
                        at: #'singleClick'
                        forClass: elementProxy asTopezProxy proxyClassName
                        ifAbsent: [ ^ self ].
                    clickBlock value: elementProxy value: self topez value: self ]
                        ensure: [ updating := false ] ] ]