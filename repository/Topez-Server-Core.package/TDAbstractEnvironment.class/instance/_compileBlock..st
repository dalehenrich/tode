compilation
_compileBlock: compilationBlock
  [ compilationBlock value: self methodCompilationSymbolList ]
    on: self compilerExceptionSet
    do: [ :ex | | undefinedGlobals recompileSymbolList |
      undefinedGlobals := {}.
      ex errorDetails do: [ :errArray | (errArray atOrNil: 1) == 1031
            ifTrue: [ undefinedGlobals add: (errArray atOrNil: 5) asSymbol ]
            ifFalse: [ ex outer ] ].
      (TDUndefinedGlobalNotification undefinedGlobals: undefinedGlobals) signal
        ifFalse: [ ex outer ].
      recompileSymbolList := self declareUndefinedGlobals: undefinedGlobals.
      recompileSymbolList ifNil: [ ex outer ].
      ^ compilationBlock value: recompileSymbolList ]