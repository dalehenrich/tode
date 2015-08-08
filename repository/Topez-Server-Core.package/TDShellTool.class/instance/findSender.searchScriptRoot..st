find
findSender: selectorToken searchScriptRoot: path
  "find [--scriptPath=<tode-path>] sender [#]<selector>"

  | selector rootSearchNode leafNodes |
  path ifNil: [ ^ self findSender: selectorToken ].
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
      srcOffset ~~ nil
        ifTrue: [ leafNodes add: leafNode ]
        ifFalse: [ 
          (gsMethod _literalsIncludesSymbol: selector value: selector)
            ifTrue: [ leafNodes add: leafNode ]
            ifFalse: [ 
              (gsMethod literals asArray refersToLiteral: selector)
                ifTrue: [ leafNodes add: leafNode ] ] ] ]
        on: self compilerExceptionSet
        do: [ :ex | 
          Transcript
            cr;
            show: 'Compile error processing: ' , leafNode printString ] ].
  ^ leafNodes asArray sort: [ :a :b | a printString < b printString ]