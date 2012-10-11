editting
currentWindowId: anInteger
    self status currentWindowId: anInteger.
    ^ (self status windowAt: anInteger)
        ifNotNil: [ :window | 
            window
                expand;
                makeSecondTopmost.
            window model updateStatus: self status.
            window ]