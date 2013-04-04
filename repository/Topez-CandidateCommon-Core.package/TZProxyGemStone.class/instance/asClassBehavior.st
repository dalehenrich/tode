conversion
asClassBehavior
    "have to get oop of class"

    | messageSend classOop |
    messageSend := TZGsMessageSend new
        topez: self topez;
        receiver: (TZHeaderGemStone oop: self elementClass oop);
        selector: 'class';
        arguments: #();
        transform: #'raw' -> nil;
        yourself.
    TZGemStoneProxyBehavior critical: [ classOop := messageSend value ].
    ^ TZGemStoneProxyBehavior new
        behaviorOop: classOop;
        topez: self topez;
        yourself