accessing
listKeystroke: event
    false
        ifTrue: [ 
            | stream |
            stream := WriteStream on: String new.
            event printKeyStringOn: stream.
            Transcript
                cr;
                show: stream contents;
                show: ' ' , (event buttons printStringBase: 2) , ' ' , (event buttons printStringBase: 16);
                show: ' ctl: ' , Sensor controlKeyPressed printString , ' cmd:' , Sensor commandKeyPressed printString ].
    event keyCharacter = Character arrowUp
        ifTrue: [ ^ self listKeystrokeUp ].
    event keyCharacter = Character arrowDown
        ifTrue: [ ^ self listKeystrokeDown ].
    event keyCharacter = Character arrowLeft
        ifTrue: [ ^ self listKeystrokeLeft ].
    event keyCharacter = Character arrowUp
        ifTrue: [ ^ self listKeystrokeUp ].
    (event anyModifierKeyPressed and: [ #($C $L $N $c $m $n $o $v $x) includes: event keyCharacter ])
        ifTrue: [ 
            event keyCharacter = $C
                ifTrue: [ ^ self controlShiftCKeyStroke ].
            event keyCharacter = $L
                ifTrue: [ ^ self controlShiftLKeyStroke ].
            event keyCharacter = $c
                ifTrue: [ ^ self executeCommandForClickBlock: #'cmdCKeyStroke' ].
            event keyCharacter = $m
                ifTrue: [ ^ self executeCommandForClickBlock: #'cmdMKeyStroke' ].
            event keyCharacter = $n
                ifTrue: [ ^ self executeCommandForClickBlock: #'cmdNKeyStroke' ].
            event keyCharacter = $N
                ifTrue: [ ^ self executeCommandForClickBlock: #'cmdShiftNKeyStroke' ].
            event keyCharacter = $o
                ifTrue: [ ^ self executeCommandForClickBlock: #'cmdOKeyStroke' ].
            event keyCharacter = $v
                ifTrue: [ ^ self executeCommandForClickBlock: #'cmdVKeyStroke' ].
            event keyCharacter = $x
                ifTrue: [ ^ self executeCommandForClickBlock: #'cmdXKeyStroke' ] ]