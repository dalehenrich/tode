accessing
evaluateSmalltalk: smalltalkSource variableBindings: variableBindings
  | result litVarArray |
  litVarArray := {}.
  variableBindings keysAndValuesDo: [ :key :value | litVarArray
        add: key asSymbol;
        add: (SymbolAssociation key: key asSymbol value: value) ].
  litVarArray isEmpty
    ifTrue: [ litVarArray := nil ].
  self ensureSessionMethodsEnabled.
  result := smalltalkSource
    evaluateIn: nil
    symbolList: self symbolList
    literalVars: litVarArray.
  self ensureSessionMethodsEnabled.
  ^ result