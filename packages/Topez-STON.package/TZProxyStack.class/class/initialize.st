class initialization
initialize
    "self initialize"

    super initialize.
    self printBlocks
        at: #'basic'
        put: [ :proxy :aStream :indent | 
            aStream
                nextPutAll: '...stack frame #1:';
                cr.
            (proxy indexed at: 1) printOn: aStream ]