as yet unclassified
allGlobalNames
  AllGlobalNames
    ifNil: [ 
      | block |
      block := TZGsBlockSend new
        topez: self topez;
        blockSource:
            '[| globalNames |
globalNames := IdentitySet new.
System myUserProfile symbolList do: [:symbolDict |
	globalNames addAll: symbolDict keys].
globalNames asArray]';
        transform: #'ston' -> 1.
      self critical: [ AllGlobalNames := block value ] ].
  ^ AllGlobalNames