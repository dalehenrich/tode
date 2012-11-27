as yet unclassified
allSharedPoolNames
    allSharedPoolNames
        ifNil: [ 
            | message allSharedPoolsOop block list |
            message := TZGsMessageSend new
                topez: self topez;
                receiver: (TZHeaderGemStone oop: self behaviorOop);
                selector: 'allSharedPools';
                arguments: #();
                transform: #'raw' -> nil.
            allSharedPoolsOop := self critical: [ message value ].
            block := TZGsBlockSend new
                topez: self topez;
                blockSource:
                        '[:allSharedPools | | sharedPoolNames |
						sharedPoolNames := IdentitySet new.
						allSharedPools do: [:poolDict |
                         		sharedPoolNames addAll: poolDict keys].
						allSharedPools asArray]';
                transform: #'ston' -> 2.
            list := self critical: [ block value: (TZHeaderGemStone oop: allSharedPoolsOop) ].
            allSharedPoolNames := list collect: [ :each | each asTopezNative ] ].
    ^ allSharedPoolNames