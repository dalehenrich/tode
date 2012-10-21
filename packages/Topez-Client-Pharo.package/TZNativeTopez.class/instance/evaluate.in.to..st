coding
evaluate: aString in: ctxt to: rcvr
    | result |
    result := self doInSession: [ :sess | sess evaluate: aString in: ctxt asTopezProxy to: rcvr asTopezProxy ].
    ^ result
        topez: self;
        signalNotifications;
        yourself