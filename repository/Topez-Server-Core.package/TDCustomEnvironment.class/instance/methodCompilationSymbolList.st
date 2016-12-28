accessing
methodCompilationSymbolList
  ^ methodCompilationSymbolList
    ifNil: [ methodCompilationSymbolList := self defaultMethodCompilationSymbolList ]