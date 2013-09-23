as yet unclassified
pasteIntoProtocolDefinition: aProtocolDefinition
  "add method to aProtocol"

  | method source category |
  method := self method.
  source := method sourceString.
  category := aProtocolDefinition categoryName.
  (aProtocolDefinition theBehavior
    compiledMethodAt: method selector
    ifAbsent: [  ]) == method
    ifTrue: [ 
      "moving method to different category"
      aProtocolDefinition theBehavior
        moveMethod: method selector
        toCategory: category ]
    ifFalse: [ 
      "adding method to behavior"
      aProtocolDefinition theBehavior compile: source classified: category ].
  ^ true