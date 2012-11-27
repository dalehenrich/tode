as yet unclassified
allClassVarNames
    allClassVarNames
        ifNil: [ 
            | message list |
            message := TZGsMessageSend new
                topez: self topez;
                receiver: (TZHeaderGemStone oop: self behaviorOop);
                selector: 'allClassVarNames';
                arguments: #();
                transform: #'ston' -> 2.
            list := self critical: [ message value ].
            allClassVarNames := list collect: [ :each | each asTopezNative asString ] ].
    ^ allClassVarNames