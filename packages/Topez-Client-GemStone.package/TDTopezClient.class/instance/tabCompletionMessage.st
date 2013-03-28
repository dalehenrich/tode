as yet unclassified
tabCompletionMessage
  evaluateTokenMessage
    ifNil: [ 
      tabCompletionMessage := TZGsMessageSend new
        topez: self;
        receiver: (TZHeaderGemStone oop: self topezServerOop);
        selector: 'tabCompletion:';
        arguments: #();
        transform: #'native' -> nil ].
  ^ tabCompletionMessage