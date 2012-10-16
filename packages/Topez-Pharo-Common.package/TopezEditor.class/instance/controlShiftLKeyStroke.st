as yet unclassified
controlShiftLKeyStroke
    | evaluator names ids namesAndIds index |
    namesAndIds := self topez status windowNamesAndIds.
    names := namesAndIds collect: [ :assoc | assoc key ].
    ids := namesAndIds collect: [ :assoc | assoc value ].
    index := UIManager default chooseFrom: names.
    index > 0
        ifTrue: [ 
            evaluator := self topez editorWindowAt: (ids at: index).
            evaluator activate ].
    ^ true