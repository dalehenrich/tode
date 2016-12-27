compilation
_compileBlock: compilationBlock
  [ compilationBlock value: self methodCompilationSymbolList ]
    on: self compilerExceptionSet
    do: [ :ex | | undefinedSymbols recompileSymbolList |
      undefinedSymbols := {}.
      ex errorDetails do: [ :errArray | (errArray atOrNil: 1) == 1031
            ifTrue: [ undefinedSymbols add: (errArray atOrNil: 5) asSymbol ]
            ifFalse: [ ex outer ] ].
      (UndefinedSymbolNotification new
        args: ex gsArguments;
        signal)
        ifFalse: [ ex outer ].
      recompileSymbolList := self declareUndefinedSymbols: undefinedSymbols.
      ^ compilationBlock value: recompileSymbolList ]