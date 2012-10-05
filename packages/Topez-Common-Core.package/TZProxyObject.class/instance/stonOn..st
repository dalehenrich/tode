ston
stonOn: stonWriter
    stonWriter
        writeObject: self
        streamMap: [ :dictionary | 
            stonWriter noProxy: true.
            dictionary at: #'header' put: self header.
            stonWriter incrementObjectLimit.
            stonWriter levelLimitExceeded
                ifTrue: [ stonWriter noProxy: false ]
                ifFalse: [ 
                    stonWriter noProxy: true.
                    self header namedSize > 0
                        ifTrue: [ 
                            stonWriter
                                mapElementSeparator;
                                nextPut: #'named';
                                prettyPrintSpace;
                                pairSeparator;
                                prettyPrintSpace;
                                noProxy: false.
                            stonWriter encodeNamed: self body ].
                    stonWriter noProxy: true.
                    self header indexedSize > 0
                        ifTrue: [ 
                            stonWriter
                                mapElementSeparator;
                                nextPut: #'indexed';
                                prettyPrintSpace;
                                pairSeparator;
                                prettyPrintSpace;
                                noProxy: false.
                            stonWriter encodeIndexed: self body ].
                    stonWriter noProxy: false ].
            stonWriter decrementObjectLimit ]