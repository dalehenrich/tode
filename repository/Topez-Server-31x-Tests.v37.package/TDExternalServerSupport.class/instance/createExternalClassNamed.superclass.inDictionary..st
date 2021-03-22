private
createExternalClassNamed: className superclass: superclass inDictionary: aSymbolDictionary
  | externalClass symbolList |
  externalClass := superclass
    subclass: className
    instVarNames: #()
    classVars: #()
    classInstVars: #()
    poolDictionaries: #()
    inDictionary: aSymbolDictionary
    options: #().
  symbolList := SymbolList new
    addLast: aSymbolDictionary;
    yourself.
  externalClass compileMethod: 'signature ^2' category: 'cat' using: symbolList