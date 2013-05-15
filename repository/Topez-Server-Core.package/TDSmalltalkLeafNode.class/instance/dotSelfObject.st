rendering
dotSelfObject
  ^ [ self evaluateInContext: nil ]
    on: Error
    do: [ :ex | ^ super dotSelfObject ]