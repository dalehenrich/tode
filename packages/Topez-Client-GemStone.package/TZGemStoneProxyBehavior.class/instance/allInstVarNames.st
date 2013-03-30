as yet unclassified
allInstVarNames
  allInstVarNames
    ifNil: [ 
      | message list |
      message := TZGsMessageSend new
        topez: self topez;
        receiver: (self session asOopType: self behaviorOop);
        selector: 'allInstVarNames';
        arguments: #();
        transform: #'ston' -> 1.
      self
        critical: [ 
          list := message value.
          allInstVarNames := list collect: [ :each | each asString ] ] ].
  ^ allInstVarNames