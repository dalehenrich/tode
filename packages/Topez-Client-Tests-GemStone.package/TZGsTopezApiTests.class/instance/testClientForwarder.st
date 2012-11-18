tests
testClientForwarder
    | clientForwarderOop block transcript contents |
    [ 
    transcript := ThreadSafeTranscript new.
    clientForwarderOop := self topez session registerClientObjectForwarder: transcript.
    block := TZGsBlockSend new
        topez: topez;
        blockSource:
                [ :oop | Smalltalk at: #'TranscriptProxy' ifPresent: [ :cl | cl registerTranscriptClientForwarder: oop ] ] printString;
        transform: #'raw' -> nil.
    block value: clientForwarderOop.
    block := TZGsBlockSend new
        topez: topez;
        blockSource:
                [ 
                    Transcript
                        cr;
                        show: 'hello world' ] printString;
        transform: #'raw' -> nil.
    block value.
    transcript
        with: [ :stream | self assert: ((contents := stream instVarNamed: 'collection')  findString: 'hello world' startingAt: 1)> 0 ] ]
        ensure: [ 
            | oop |
            oop := self topez session unregisterClientObjectForwarder: transcript.
            self assert: oop = clientForwarderOop ]