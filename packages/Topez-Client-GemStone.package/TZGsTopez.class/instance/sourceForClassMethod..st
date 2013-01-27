coding
sourceForClassMethod: selector
  self currentClass == nil
    ifTrue: [ self error: 'currentClass  must be set' ].
  ^ self
    rawInSession: [ :sess | 
      | classClassOop |
      classClassOop := sess receiverNB: self currentClass performNoDebug: #'class' withArgs: #().
      sess receiverNB: classClassOop performNoDebug: 'sourceCodeAt:' withArgs: {selector} ]