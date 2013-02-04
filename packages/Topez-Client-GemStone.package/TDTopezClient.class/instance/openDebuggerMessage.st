as yet unclassified
openDebuggerMessage
  openDebuggerMessage
    ifNil: [ 
      openDebuggerMessage := TZGsMessageSend new
        topez: self;
        receiver: (TZHeaderGemStone oop: self topezServerOop);
        selector: 'openDebugger';
        arguments: #();
        transform: #'raw' -> nil ].
  ^ openDebuggerMessage