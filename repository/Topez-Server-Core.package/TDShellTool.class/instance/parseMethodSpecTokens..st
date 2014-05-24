as yet unclassified
parseMethodSpecTokens: methodSpecTokens
  "class>>selector or class class>>selector"

  | method methodRefs methodSpec |
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
  ^ methodSpec