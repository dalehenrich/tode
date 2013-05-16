as yet unclassified
findMethodSpec: findTokens
  "find amethod <method-spec>"

  | method methodSpecTokens methodRefs |
  methodSpecTokens := findTokens copyFrom: 2 to: findTokens size.
  methodSpecTokens size == 1
    ifTrue: [ 
      "class>>selector"
      method := self parseMethodSpec: (methodSpecTokens at: 1) ]
    ifFalse: [ 
      methodSpecTokens size == 2
        ifTrue: [ 
          ((methodSpecTokens at: 2) beginsWith: 'class')
            ifTrue: [ 
              "class class>>selector"
              method := self
                parseMethodSpec:
                  (methodSpecTokens at: 1) , ' ' , (methodSpecTokens at: 2) ]
            ifFalse: [ self error: 'expecting a <method spec>' ] ]
        ifFalse: [ self error: 'expecting a <method spec>' ] ].
  methodRefs := {method}.
  ^ self
    methodDefinitionsFor: methodRefs
    messagePattern: method selector
    isRegex: false