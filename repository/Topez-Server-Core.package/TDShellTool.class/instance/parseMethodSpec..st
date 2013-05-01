as yet unclassified
parseMethodSpec: methodSpecString
  "class>>selector or class class>>selector"

  | selector behavior methodSpec classSpec |
  methodSpec := methodSpecString findTokens: '>>'.
  classSpec := (methodSpec at: 1) findTokens: ' '.
  behavior := Smalltalk at: (classSpec at: 1) asSymbol.
  classSpec size > 1
    ifTrue: [ 
      (classSpec at: 2) = 'class'
        ifFalse: [ self error: 'invalid methodSpec' ].
      behavior := behavior class ].
  selector := (methodSpec at: 2) asSymbol.
  ^ behavior compiledMethodAt: selector