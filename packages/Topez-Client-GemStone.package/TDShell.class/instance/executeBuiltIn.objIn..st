evaluator engine
executeBuiltIn: tokens objIn: objIn
    self perform: (tokens at: 1) asSymbol.
    ^ tokens at: 1