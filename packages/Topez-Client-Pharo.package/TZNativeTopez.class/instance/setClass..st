coding
setClass: aString
    "preparing for find class here..."

    | regex classList className |
    regex := RxParser preferredMatcherClass for: (RxParser new parse: aString) ignoreCase: true.
    classList := (SystemNavigation default allClassesAndTraits select: [ :cls | regex search: cls name ])
        collect: [ :each | each name asString ].
    className := aString.
    classList size > 1
        ifTrue: [ 
            | index |
            index := UIManager default chooseFrom: classList.
            index = 0
                ifTrue: [ ^ '' ].
            className := classList at: index ].
    ^ super setClass: className