as yet unclassified
resetObjInMessage
  resetObjInMessage
    ifNil: [ 
      resetObjInMessage := TZGsMessageSend new
        topez: self;
        receiver: (self session asOopType: self topezServerOop);
        selector: 'resetObjIn';
        arguments: #();
        transform: #'raw' -> nil ].
  ^ resetObjInMessage