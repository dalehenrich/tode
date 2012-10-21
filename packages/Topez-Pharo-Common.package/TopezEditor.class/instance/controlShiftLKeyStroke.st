as yet unclassified
controlShiftLKeyStroke
    | evaluator names ids namesAndIds index |
    namesAndIds := self topez status windowNamesAndIds.
    names := namesAndIds collect: [ :assoc | assoc value at: 2 ].
    ids := namesAndIds collect: [ :assoc | assoc value at: 1 ].
    index := UIManager default chooseFrom: names.
    index > 0
        ifTrue: [ 
            evaluator := self topez editorWindowAt: (ids at: index).
            evaluator activate ].
    ^ true