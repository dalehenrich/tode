as yet unclassified
findVersions: findTokens labelBlock: labelBlock
  "find versions <method-spec>"

  | methodSpecTokens method methodSpec |
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
  method := self parseMethodSpec: methodSpec.
  ^ (MethodVersionHistory uniqueInstance
    versionsOfMethod: method selector
    in: method inClass)
    collect: [ :methodVersionRecord | TDMethodVersionDefinition new methodVersionRecord: methodVersionRecord ]