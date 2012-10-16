accessing
executeCommandForClickBlock: clickBlockSelector
    | index elementProxy clickBlock |
    index := self listIndex.
    index = 0
        ifTrue: [ ^ false ].
    elementProxy := self list at: index.
    clickBlock := TZProxyObject clickBlocks
        at: clickBlockSelector
        forClass: elementProxy asTopezProxy proxyClassName
        ifAbsent: [ ^ self ].
    (clickBlock value: elementProxy value: self topez value: self)
        ifTrue: [ self changed: #'list' ].
    ^ true