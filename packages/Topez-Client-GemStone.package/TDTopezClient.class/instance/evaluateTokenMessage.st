as yet unclassified
evaluateTokenMessage
    evaluateTokenMessage
        ifNil: [ 
            evaluateTokenMessage := TZGsMessageSend new
                topez: self;
                receiver: (TZHeaderGemStone oop: self topezServerOop);
                selector: 'evaluateSTONTokens:objIn:';
                arguments: #();
                transform: #'native' -> nil ].
    ^ evaluateTokenMessage