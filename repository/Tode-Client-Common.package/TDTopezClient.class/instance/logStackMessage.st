as yet unclassified
logStackMessage
  logStackMessage
    ifNil: [ 
      logStackMessage := TZGsMessageSend new
        topez: self;
        receiver: (self session asOopType: self topezServerOop);
        selector: 'logExceptionStack';
        arguments: #();
        transform: #'raw' -> nil ].
  ^ logStackMessage