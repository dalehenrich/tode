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
            index := UIManager default chooseFrom: (classList collect: [ :each | each elementClassName asTopezNative ]).
            index = 0
                ifTrue: [ ^ nil ].
            className := (classList at: index) elementClassName asTopezNative ].
    ^ self setClass: className