cls
clsaccessors: theBehavior
  ^ self
    clsaccessors: theBehavior
    setters: true
    getters: true
    argName: 'anObject'
    protocol: 'accessing'
    force: false