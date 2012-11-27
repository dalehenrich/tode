as yet unclassified
setExceptionMessage
    setExceptionMessage
        ifNil: [ 
            setExceptionMessage := TZGsMessageSend new
                topez: self;
                receiver: (TZHeaderGemStone oop: self topezServerOop);
                selector: 'exception:';
                arguments: #();
                transform: #'raw' -> nil ].
    ^ setExceptionMessage