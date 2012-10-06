coding
sourceForMethod: methodProxy
    ^ self rawInSession: [ :sess | sess sourceForMethod: methodProxy ]