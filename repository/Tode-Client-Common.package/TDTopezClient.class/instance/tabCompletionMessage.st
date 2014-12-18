as yet unclassified
tabCompletionMessage
  evaluateTokenMessage
    ifNil: [ 
      tabCompletionMessage := TZGsMessageSend new
        topez: self;
        receiver: (self session asOopType: self topezServerOop);
        selector: 'tabCompletion:';
        arguments: #();
        transform: #'ston' -> nil ].
  ^ tabCompletionMessage