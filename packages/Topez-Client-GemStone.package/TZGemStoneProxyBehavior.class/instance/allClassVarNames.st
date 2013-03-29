as yet unclassified
allClassVarNames
  allClassVarNames
    ifNil: [ 
      | message list |
      message := TZGsMessageSend new
        topez: self topez;
        receiver: (self session asOopType: self behaviorOop);
        selector: 'allClassVarNames';
        arguments: #();
        transform: #'ston' -> 1.
      self
        critical: [ 
          list := message value.
          allClassVarNames := list collect: [ :each | each asString ] ] ].
  ^ allClassVarNames