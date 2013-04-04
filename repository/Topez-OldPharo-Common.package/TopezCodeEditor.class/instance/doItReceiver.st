accessing
doItReceiver
    ^ self edittingCode
        ifTrue: [ self sourceElement elementClass ]
        ifFalse: [ nil ]