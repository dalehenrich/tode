find
findMethods: findTokens
  "find methods <method-spec> <method-spec>"

  | methodSpec selector behavior classSpec methodSpecTokens method1 method2 |
  methodSpecTokens := findTokens copyFrom: 2 to: findTokens size.
  methodSpecTokens size = 2
    ifTrue: [ 
      "class>>selector class>>selector"
      method1 := self methodFromMethodSpec: (methodSpecTokens at: 1).
      method2 := self methodFromMethodSpec: (methodSpecTokens at: 2) ]
    ifFalse: [ 
      methodSpecTokens size = 3
        ifTrue: [ 
          ((methodSpecTokens at: 2) beginsWith: 'class')
            ifTrue: [ 
              "class class>>selector class>>selector"
              method1 := self
                methodFromMethodSpec:
                  (methodSpecTokens at: 1) , ' ' , (methodSpecTokens at: 2).
              method2 := self methodFromMethodSpec: (methodSpecTokens at: 3) ]
            ifFalse: [ 
              ((methodSpecTokens at: 3) beginsWith: 'class')
                ifTrue: [ 
                  "class>>selector class class>>selector"
                  method2 := self
                    methodFromMethodSpec:
                      (methodSpecTokens at: 2) , ' ' , (methodSpecTokens at: 3).
                  method1 := self methodFromMethodSpec: (methodSpecTokens at: 1) ]
                ifFalse: [ self error: 'expecting a <method spec>' ] ] ]
        ifFalse: [ 
          methodSpecTokens size = 4
            ifTrue: [ 
              (((methodSpecTokens at: 2) beginsWith: 'class')
                and: [ (methodSpecTokens at: 4) beginsWith: 'class' ])
                ifTrue: [ 
                  "class class>>selector class class>>selector"
                  method1 := self
                    methodFromMethodSpec:
                      (methodSpecTokens at: 1) , ' ' , (methodSpecTokens at: 2).
                  method2 := self
                    methodFromMethodSpec:
                      (methodSpecTokens at: 3) , ' ' , (methodSpecTokens at: 4) ]
                ifFalse: [ self error: 'expecting a <method spec>' ] ]
            ifFalse: [ self error: 'expecting a <method spec>' ] ] ].
  ^ {method1.
  method2}
    collect: [ :method | 
      TDMethodDefinition
        className: method inClass theNonMetaClass name
        isMeta: method inClass isMeta
        selector: method selector
        messagePattern: method selector asString
        messagePatternIsRegex: false ]