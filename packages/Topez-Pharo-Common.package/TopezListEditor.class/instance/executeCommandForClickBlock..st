accessing
executeCommandForClickBlock: clickBlockSelector
    | index elementProxy clickBlock |
    index := self listIndex.
    elementProxy := index = 0
        ifTrue: [ self emptyTemplateElement ifNil: [ ^ false ] ]
        ifFalse: [ self list at: index ].
    clickBlock := TZProxyObject clickBlocks
        at: clickBlockSelector
        forClass: elementProxy asTopezProxy proxyClassName
        ifAbsent: [ ^ false ].
    (clickBlock value: elementProxy value: self topez value: self) asTopezProxy asTopezNative
        ifTrue: [ self changed: #'list' ].
    ^ true