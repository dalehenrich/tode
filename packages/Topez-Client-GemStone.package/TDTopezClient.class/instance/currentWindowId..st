as yet unclassified
currentWindowId: anInteger
    ^ (self windowStatus windowAt: anInteger)
        ifNotNil: [ :window | 
            window
                expand;
                makeSecondTopmost.
            window model updateStatus: self status.
            window ]