as yet unclassified
allGlobalNames
    AllGlobalNames
        ifNil: [ 
            | list |
            list := (TZGsBlockSend new
                topez: self topez;
                blockSource:
                        '[| globalNames |
globalNames := IdentitySet new.
System myUserProfile symbolList do: [:symbolDict |
	globalNames addAll: symbolDict keys].
globalNames asArray]';
                transform: #'ston' -> 2) value.
            AllGlobalNames := list collect: [ :each | each asTopezNative ] ].
    ^ AllGlobalNames