as yet unclassified
referencesTo: aVariableOrClassName isMeta: isMeta in: aClassOrNil
  ^ (self rawReferencesTo: aVariableOrClassName isMeta: isMeta in: aClassOrNil)
    collect: [ :methodRef | 
      self
        className: methodRef actualClass theNonMetaClass name
        isMeta: methodRef actualClass isMeta
        selector: methodRef selector
        messagePattern: aVariableOrClassName ]