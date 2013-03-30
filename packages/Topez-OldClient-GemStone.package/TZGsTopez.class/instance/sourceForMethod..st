coding
sourceForMethod: selector
  "    ^ self rawInSession: [ :sess | sess receiverNB: method performNoDebug: 'sourceString' withArgs: #() ]"

  self currentClass == nil
    ifTrue: [ self error: 'currentClass  must be set' ].
  ^ self
    rawInSession: [ :sess | sess receiverNB: self currentClass performNoDebug: #'sourceCodeAt:' withArgs: {(selector asSymbol)} ]