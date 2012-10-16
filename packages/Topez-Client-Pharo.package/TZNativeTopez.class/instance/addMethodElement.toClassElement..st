coding
addMethodElement: methodElement toClassElement: classElement
    ^ self
        rawInSession: [ :sess | sess addMethodElement: methodElement asTopezProxy toClassElement: classElement asTopezProxy ]