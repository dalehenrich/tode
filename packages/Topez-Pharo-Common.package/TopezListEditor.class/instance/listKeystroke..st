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
    (event anyModifierKeyPressed
        and: [ #($B $C $K $L $N $b $c $m $n $o $p $t $u $j $k $v $x) includes: event keyCharacter ])
        ifTrue: [ 
            event keyCharacter = $B
                ifTrue: [ ^ self executeCommandForClickBlock: #'cmdShiftBKeyStroke' ].
            event keyCharacter = $C
                ifTrue: [ ^ self controlShiftCKeyStroke ].
            event keyCharacter = $L
                ifTrue: [ ^ self controlShiftLKeyStroke ].
            event keyCharacter = $b
                ifTrue: [ ^ self executeCommandForClickBlock: #'cmdBKeyStroke' ].
            event keyCharacter = $c
                ifTrue: [ ^ self executeCommandForClickBlock: #'cmdCKeyStroke' ].
            event keyCharacter = $j
                ifTrue: [ ^ self executeCommandForClickBlock: #'cmdJKeyStroke' ].
            event keyCharacter = $k
                ifTrue: [ ^ self executeCommandForClickBlock: #'cmdKKeyStroke' ].
            event keyCharacter = $K
                ifTrue: [ ^ self executeCommandForClickBlock: #'cmdShiftKKeyStroke' ].
            event keyCharacter = $m
                ifTrue: [ ^ self executeCommandForClickBlock: #'cmdMKeyStroke' ].
            event keyCharacter = $n
                ifTrue: [ ^ self executeCommandForClickBlock: #'cmdNKeyStroke' ].
            event keyCharacter = $N
                ifTrue: [ ^ self executeCommandForClickBlock: #'cmdShiftNKeyStroke' ].
            event keyCharacter = $o
                ifTrue: [ ^ self executeCommandForClickBlock: #'cmdOKeyStroke' ].
            event keyCharacter = $p
                ifTrue: [ ^ self executeCommandForClickBlock: #'cmdPKeyStroke' ].
            event keyCharacter = $t
                ifTrue: [ ^ self executeCommandForClickBlock: #'cmdTKeyStroke' ].
            event keyCharacter = $u
                ifTrue: [ ^ self executeCommandForClickBlock: #'cmdUKeyStroke' ].
            event keyCharacter = $v
                ifTrue: [ ^ self executeCommandForClickBlock: #'cmdVKeyStroke' ].
            event keyCharacter = $x
                ifTrue: [ ^ self executeCommandForClickBlock: #'cmdXKeyStroke' ] ]