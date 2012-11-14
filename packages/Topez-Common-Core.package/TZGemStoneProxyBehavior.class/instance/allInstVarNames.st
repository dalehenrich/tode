as yet unclassified
allInstVarNames
    allInstVarNames
        ifNil: [ 
            | list |
            list := (TZGsMessageSend new
                topez: self topez;
                receiver: (TZHeaderGemStone oop: self behaviorOop);
                selector: 'allInstVarNames';
                arguments: {};
                transform: #'ston' -> 2) value.
            allInstVarNames := list collect: [ :each | each asTopezNative asString ] ].
    ^ allInstVarNames