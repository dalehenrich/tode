conversion
asClassBehavior
    "have to get oop of class"

    | classClassOop |
    classClassOop := (TZGsMessageSend new
        topez: self topez;
        receiver: (TZHeaderGemStone oop: self classOop);
        selector: 'class';
        arguments: {};
        transform: #'raw' -> nil;
        yourself) value.
    ^ TZGemStoneProxyBehavior new
        behaviorOop: classClassOop;
        topez: self topez;
        yourself