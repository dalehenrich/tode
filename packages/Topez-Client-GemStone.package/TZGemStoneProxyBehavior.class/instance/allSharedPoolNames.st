as yet unclassified
allSharedPoolNames
  allSharedPoolNames
    ifNil: [ 
      | message allSharedPoolsOop block list |
      message := TZGsMessageSend new
        topez: self topez;
        receiver: (self session asOopType: self behaviorOop);
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
        transform: #'ston' -> 1.
      self
        critical: [ 
          list := block value: (self session asOopType: allSharedPoolsOop).
          allSharedPoolNames := list collect: [ :each | each ] ] ].
  ^ allSharedPoolNames