as yet unclassified
allClassVarNames
    allClassVarNames
        ifNil: [ 
            | list |
            list := (TZGsMessageSend new
                topez: self topez;
                receiver: (TZHeaderGemStone oop: self behaviorOop);
                selector: 'allClassVarNames';
                arguments: {};
                transform: #'ston' -> 2) value.
            allClassVarNames := list collect: [ :each | each asTopezNative asString ] ].
    ^ allClassVarNames