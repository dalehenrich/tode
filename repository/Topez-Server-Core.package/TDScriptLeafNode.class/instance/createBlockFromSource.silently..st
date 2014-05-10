as yet unclassified
createBlockFromSource: blockSource silently: silently
  | compileBlock theSymbolList |
  theSymbolList := GsSession currentSession symbolList.
  compileBlock := [ :aSymbolList | 
  | meth |
  meth := blockSource _compileInContext: nil symbolList: aSymbolList.
  meth _executeInContext: nil ].
  silently
    ifTrue: [ ^ self compileHandlingUndeclaredSymbols: compileBlock with: theSymbolList ]
    ifFalse: [ ^ compileBlock value: theSymbolList ]