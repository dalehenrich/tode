as yet unclassified
evaluateTokenMessage
    evaluateTokenMessage
        ifNil: [ 
            evaluateTokenMessage := TZGsMessageSend new
                topez: self;
                receiver: (TZHeaderGemStone oop: self topezServerOop);
                selector: 'evaluateTokens:';
                arguments: {#()};
                transform: #'ston' -> 2 ].
    ^ evaluateTokenMessage