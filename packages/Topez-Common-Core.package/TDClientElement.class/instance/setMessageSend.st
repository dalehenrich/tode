as yet unclassified
setMessageSend
    ^ TZGsMessageSend new
        topez: self topez;
        receiver: (self session asOopType: self serverElementOop);
        selector: self setSelector;
        arguments: {#()};
        transform: #'raw' -> nil