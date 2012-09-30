class initialization
initialize
    "self initialize"

    super initialize.
    self printBlocks
        at: #'basic'
        put: [ :proxy :aStream :indent | 
            proxy header printOn: aStream.
            aStream
                nextPutAll: (proxy topezClient fetchFrameFor: proxy context frameId: 1 level: 0);
                cr ]