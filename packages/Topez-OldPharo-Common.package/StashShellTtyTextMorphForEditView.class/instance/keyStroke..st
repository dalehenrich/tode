editing
keyStroke: event
    false
        ifTrue: [ 
            | stream |
            stream := WriteStream on: String new.
            event printKeyStringOn: stream.
            Transcript
                cr;
                show: 'TextMorph stroke: ' , stream contents;
                show: ' ctl: ' , Sensor controlKeyPressed printString , ' cmd:' , Sensor commandKeyPressed printString ].
    (self editView model filterAndForwardEvent: event) ifNotNil: [ ^ super keyStroke: event ]