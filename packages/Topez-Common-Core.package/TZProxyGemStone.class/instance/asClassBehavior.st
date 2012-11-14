conversion
asClassBehavior
    "have to get oop of class"

    | classOop |
    classOop := (TZGsMessageSend new
        topez: self topez;
        receiver: (TZHeaderGemStone oop: self oop);
        selector: 'class';
        arguments: {};
        transform: #'raw' -> nil;
        yourself) value.
    ^ TZGemStoneProxyBehavior new
        behaviorOop: classOop;
        topez: self topez;
        yourself