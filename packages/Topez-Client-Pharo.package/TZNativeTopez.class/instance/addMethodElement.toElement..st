coding
addMethodElement: methodElement toElement: anElementProxy
    ^ self
        rawInSession: [ :sess | sess addMethodElement: methodElement asTopezProxy toElement: anElementProxy asTopezProxy ]