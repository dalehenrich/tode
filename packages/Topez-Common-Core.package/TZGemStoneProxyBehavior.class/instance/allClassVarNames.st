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
                transform: #'ston' -> 1.
            self
                critical: [ 
                    list := message value.
                    allClassVarNames := list collect: [ :each | each asTopezNative asString ] ] ].
    ^ allClassVarNames