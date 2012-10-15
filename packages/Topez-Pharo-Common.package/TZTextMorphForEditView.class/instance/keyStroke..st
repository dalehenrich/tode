accessing
keyStroke: event
    "Handle a keystroke. Deal with navigation keys also."

    | stream |
    stream := WriteStream on: String new.
    event printKeyStringOn: stream.
    Transcript
        cr;
        show: 'TextMorph stroke: ' , stream contents;
        show: ' ctl: ' , Sensor controlKeyPressed printString , ' cmd:' , Sensor commandKeyPressed printString.
    ^ super keyStroke: event