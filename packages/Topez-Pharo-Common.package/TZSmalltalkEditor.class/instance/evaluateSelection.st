do-its
evaluateSelection
    "Treat the current selection as an expression; evaluate it and return the result"

    self halt.
    ^ self evaluateSelectionAndDo: [ :result | result ]