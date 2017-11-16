as yet unclassified
pasteIntoProtocolDefinition: aProtocolDefinition
  "add method to aProtocol"

  | method source category |
  method := self method.
  source := method sourceString.
  category := aProtocolDefinition categoryName.
  (self appEnv
    method: method selector
    for: aProtocolDefinition theBehavior
    ifAbsent: [  ]) == method
    ifTrue: [ 
      "moving method to different category"
      self appEnv
        moveMethod: method selector
        toCategory: category
        for: aProtocolDefinition theBehavior ]
    ifFalse: [ 
      "adding method to behavior"
      self appEnv
        compile: source withGemstoneLineEndings
        inBehavior: aProtocolDefinition theBehavior
        classified: category ].
  ^ true