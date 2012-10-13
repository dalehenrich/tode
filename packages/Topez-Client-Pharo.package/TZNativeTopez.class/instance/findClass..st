coding
findClass: aString
    | regex classList className |
    regex := RxParser preferredMatcherClass for: (RxParser new parse: aString) ignoreCase: true.
    classList := (SystemNavigation default allClassesAndTraits select: [ :cls | regex search: cls name ])
        collect: [ :each | each name asString ].
    className := aString.
    classList size = 0
        ifTrue: [ ^ nil ].
    classList size > 1
        ifTrue: [ 
            | index |
            index := UIManager default chooseFrom: classList.
            index = 0
                ifTrue: [ ^ nil ].
            className := classList at: index ].
    ^ self setClass: className