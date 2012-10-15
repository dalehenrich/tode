accessing
handlesKeyboard: event
    | stream |
    stream := WriteStream on: String new.
    event printKeyStringOn: stream.
    false
        ifTrue: [ 
            Transcript
                cr;
                show: 'TextMorph handles: ' , stream contents;
                show: ' ctl: ' , Sensor controlKeyPressed printString , ' cmd:' , Sensor commandKeyPressed printString ].
    ^ true