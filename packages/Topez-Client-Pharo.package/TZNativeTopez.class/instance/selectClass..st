coding
selectClass: aString
    | classList className |
    classList := self findMatchingClasses: aString.
    className := aString.
    classList size = 0
        ifTrue: [ ^ nil ].
    classList size > 1
        ifTrue: [ 
            | index |
            index := UIManager default chooseFrom: (classList collect: [:each | each proxyClassName asTopezNative]).
            index = 0
                ifTrue: [ ^ nil ].
            className := (classList at: index) proxyClassName asTopezNative].
    ^ self setClass: className