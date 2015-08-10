find
findMethodSpec: findTokens labelBlock: labelBlock
  "find amethod <method-spec>"

  | methodSpecTokens methodSpec |
  methodSpecTokens := findTokens copyFrom: 2 to: findTokens size.
  methodSpecTokens size == 1
    ifTrue: [ 
      "class>>selector"
      methodSpec := methodSpecTokens at: 1 ]
    ifFalse: [ 
      methodSpecTokens size == 2
        ifTrue: [ 
          ((methodSpecTokens at: 2) beginsWith: 'class')
            ifTrue: [ 
              "class class>>selector"
              methodSpec := (methodSpecTokens at: 1) , ' '
                , (methodSpecTokens at: 2) ]
            ifFalse: [ self error: 'expecting a <method spec>' ] ]
        ifFalse: [ self error: 'expecting a <method spec>' ] ].
  labelBlock value: methodSpec.
  ^ self findMethodSpec: methodSpec