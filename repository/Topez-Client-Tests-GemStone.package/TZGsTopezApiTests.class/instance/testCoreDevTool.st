tests
testCoreDevTool
    | clientForwarderOop block |
    [ 
    clientForwarderOop := self topez session registerClientObjectForwarder: self topez.
    block := TZGsBlockSend new
        topez: topez;
        blockSource:
                [ :oop | 
                    | topezServer |
                    topezServer := TDTopezServer default.
                    topezServer topezClientForwarder: oop.
                    TDCoreDevTool implementors value: topezServer value: #('implementors' 'implementors') value: nil ]
                        printString;
        transform: #'raw' -> nil.
    block value: clientForwarderOop ]
        ensure: [ 
            | oop |
            oop := self topez session unregisterClientObjectForwarder: self topez.
            self assert: oop = clientForwarderOop ]