execution
executeExpressionFrom: anExpressionString inContext: aReceiver level: level
    | result |
    result := anExpressionString evaluateInContext: aReceiver symbolList: GsSession currentSession symbolList.
    ^ self toString: result level: level