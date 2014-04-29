doit support
doItLiteralArray
  | litVarArray instVars |
  litVarArray := {}.
  instVars := self theClass class allInstVarNames.
  1 to: instVars size do: [ :index | 
    | tempVar |
    tempVar := instVars at: index.
    litVarArray
      add: tempVar;
      add:
          (SymbolAssociation key: tempVar value: (self theClass instVarAt: index)) ].
  ^ litVarArray