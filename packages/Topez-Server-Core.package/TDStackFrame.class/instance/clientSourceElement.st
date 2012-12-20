as yet unclassified
clientSourceElement
    ^ TDClientSourceElement new
        serverElementOop: self asOop;
        inClassOop: (self inClass ifNotNil: [ self inClass asOop ]);
        getSelector: #'homeMethodSource';
        setSelector: #'homeMethodSource:';
        sourceRange:
                {(self selectionRange first).
                    (self selectionRange last)};
        yourself