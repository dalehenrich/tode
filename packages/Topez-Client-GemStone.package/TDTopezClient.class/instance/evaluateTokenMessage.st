as yet unclassified
evaluateTokenMessage
  evaluateTokenMessage
    ifNil: [ 
      evaluateTokenMessage := TZGsMessageSend new
        topez: self;
        receiver: (self session asOopType: self topezServerOop);
        selector: 'evaluateSTONTokens:';
        arguments: #();
        transform: #'native' -> nil ].
  ^ evaluateTokenMessage