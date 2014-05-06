as yet unclassified
doItLiteralArrayFor: anObject
  | litVarArray instVars |
  litVarArray := {}.
  instVars := anObject class allInstVarNames.
  1 to: instVars size do: [ :index | 
    | tempVar |
    tempVar := instVars at: index.
    litVarArray
      add: tempVar;
      add: (SymbolAssociation key: tempVar value: (anObject instVarAt: index)) ].
  ^ litVarArray