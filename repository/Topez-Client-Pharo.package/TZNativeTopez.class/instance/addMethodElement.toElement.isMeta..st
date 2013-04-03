coding
addMethodElement: methodElement toElement: anElementProxy isMeta: isMeta
    ^ self
        rawInSession: [ :sess | sess addMethodElement: methodElement asTopezProxy toElement: anElementProxy asTopezProxy isMeta: isMeta ]