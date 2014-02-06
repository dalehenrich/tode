as yet unclassified
referencesTo: aVariableOrClassName isMeta: isMeta in: aClassOrNil
  ^ (self rawReferencesTo: aVariableOrClassName isMeta: isMeta in: aClassOrNil)
    collect: [ :methodRef | 
      self
        className: methodRef classSymbol
        isMeta: methodRef classIsMeta
        selector: methodRef selector
        messagePattern: aVariableOrClassName ]