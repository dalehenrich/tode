accessing
listKeystroke: event
    | stream |
    event keyCharacter = Character arrowUp
        ifTrue: [ ^ self listKeystrokeUp ].
    event keyCharacter = Character arrowDown
        ifTrue: [ ^ self listKeystrokeDown ].
    stream := WriteStream on: String new.
    event printKeyStringOn: stream.
    Transcript
        cr;
        show: stream contents;
        show: ' ' , (event buttons printStringBase: 2) , ' ' , (event buttons printStringBase: 16);
        show:
                ' ctl: ' , Sensor  controlKeyPressed printString , ' cmd:' , Sensor commandKeyPressed printString