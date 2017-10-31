methods
sourceCodeAt: selector for: aBehavior ifAbsent: absentBlock
  self username
    ifNotNil: [ ^ (aBehavior perform: #'persistentMethodAt:' with: self selector) sourceString ].
  ^ super sourceCodeAt: selector for: aBehavior ifAbsent: absentBlock