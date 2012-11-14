as yet unclassified
allSharedPoolNames
    allSharedPoolNames
        ifNil: [ 
            | allSharedPoolOops list |
            allSharedPoolOops := (TZGsMessageSend new
                topez: self topez;
                receiver: (TZHeaderGemStone oop: self behaviorOop);
                selector: 'allSharedPools';
                arguments: {};
                transform: #'raw' -> nil) value.
            list := (TZGsBlockSend new
                topez: self topez;
                blockSource:
                        '[:allSharedPools | | sharedPoolNames |
						sharedPoolNames := IdentitySet new.
						allSharedPools do: [:poolDict |
                         		sharedPoolNames addAll: poolDict keys].
						allSharedPools asArray]';
                transform: #'ston' -> 2) value: (TZHeaderGemStone oop: allSharedPoolOops).
            allSharedPoolNames := list collect: [ :each | each asTopezNative ] ].
    ^ allSharedPoolNames