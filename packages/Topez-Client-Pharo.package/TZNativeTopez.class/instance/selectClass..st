coding
selectClass: aString
    | classList className |
    classList := self findClass: aString.
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