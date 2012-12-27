accessing
selectedElement
    | index |
    index := self listIndex.
    index = 0
        ifTrue: [ ^ false ].
    ^ self list at: index