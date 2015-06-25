accessing
evaluateSTONSmalltalk: smalltalkSource variableBindings: variableBindingsSTONString
  | result litVarArray variableBindings |
  variableBindings := STON fromUTF8EncodedString: variableBindingsSTONString.
  litVarArray := {}.
  variableBindings
    keysAndValuesDo: [ :key :value | 
      litVarArray
        add: key asSymbol;
        add: (SymbolAssociation key: key asSymbol value: value) ].
  litVarArray isEmpty
    ifTrue: [ litVarArray := nil ].
  self ensureSessionMethodsEnabled.
  result := smalltalkSource
    evaluateIn: nil
    symbolList: GsSession currentSession symbolList
    literalVars: litVarArray.
  self ensureSessionMethodsEnabled.
  ^ STON toUTF8EncodedString: result