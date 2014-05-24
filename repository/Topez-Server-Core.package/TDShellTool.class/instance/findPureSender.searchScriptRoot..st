as yet unclassified
findPureSender: selectorToken searchScriptRoot: path
  "find [--scriptPath=<tode-path>] psender [#]<selector>"

  | selector rootSearchNode leafNodes |
  path ifNil: [ ^ self findPureSender: selectorToken ].
  selector := (self resolveSelector: selectorToken) asSymbol.
  rootSearchNode := self topez lookup: path.
  leafNodes := IdentitySet new.
  TDExecutableStScriptVisitor
    topez: self topez
    visitNode: rootSearchNode
    andDo: [ :leafNode | 
      [ 
      | gsMethod srcOffset |
      gsMethod := leafNode method.
      srcOffset := gsMethod _sourceOffsetOfFirstSendOf: selector.
      srcOffset ifNotNil: [ leafNodes add: leafNode ] ]
        on: self compilerExceptionSet
        do: [ :ex | 
          Transcript
            cr;
            show: 'Compile error processing: ' , leafNode printString ] ].
  ^ leafNodes asArray sort: [ :a :b | a printString < b printString ]