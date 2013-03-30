as yet unclassified
openDebuggerMessage
  openDebuggerMessage
    ifNil: [ 
      openDebuggerMessage := TZGsMessageSend new
        topez: self;
        receiver: (self session asOopType: self topezServerOop);
        selector: 'openDebugger';
        arguments: #();
        transform: #'raw' -> nil ].
  ^ openDebuggerMessage