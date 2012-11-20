evaluator engine
executeBuiltIn: tokens
    self perform: (tokens at: 1) asSymbol.
    ^ tokens at: 1