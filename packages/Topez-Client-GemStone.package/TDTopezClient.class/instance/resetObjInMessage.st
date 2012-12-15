as yet unclassified
resetObjInMessage
    resetObjInMessage
        ifNil: [ 
            resetObjInMessage := TZGsMessageSend new
                topez: self;
                receiver: (TZHeaderGemStone oop: self topezServerOop);
                selector: 'resetObjIn';
                arguments: #();
                transform: #'raw' -> nil ].
    ^ resetObjInMessage