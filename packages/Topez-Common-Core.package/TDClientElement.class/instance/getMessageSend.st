as yet unclassified
getMessageSend
    ^ TZGsMessageSend new
        topez: self topez;
        receiver: (self session asOopType: self serverElementOop);
        selector: self getSelector;
        arguments: #();
        transform: #'native' -> nil