as yet unclassified
allInstVarNames
    allInstVarNames
        ifNil: [ 
            | message list |
            message := TZGsMessageSend new
                topez: self topez;
                receiver: (TZHeaderGemStone oop: self behaviorOop);
                selector: 'allInstVarNames';
                arguments: {};
                transform: #'ston' -> 2.
            list := self critical: [ message value ].
            allInstVarNames := list collect: [ :each | each asTopezNative asString ] ].
    ^ allInstVarNames