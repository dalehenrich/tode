coding
evaluate: aString in: ctxt to: rcvr
    ^ self rawInSession: [ :sess | sess evaluate: aString in: ctxt asTopezProxy to: rcvr asTopezProxy ]