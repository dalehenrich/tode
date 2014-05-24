doit support
doItLiteralArray
  | litVarArray instVars |
  litVarArray := {}.
  instVars := self doItContext class allInstVarNames.
  1 to: instVars size do: [ :index | 
    | tempVar |
    tempVar := instVars at: index.
    litVarArray
      add: tempVar;
      add:
          (SymbolAssociation key: tempVar value: (self object instVarAt: index)) ].
  ^ litVarArray