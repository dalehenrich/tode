as yet unclassified
findMethodSpec: findTokens labelBlock: labelBlock
  "find amethod <method-spec>"

  | method methodSpecTokens methodRefs methodSpec |
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
  methodRefs := {(MethodReference
    class: method inClass
    selector: method selector)}.
  ^ self
    methodDefinitionsFor: methodRefs
    messagePattern: method selector
    isRegex: false