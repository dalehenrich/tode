doit support
doItLiteralArray
  | litVarArray tempNames |
  litVarArray := {}.
  tempNames := self object argAndTempNames.
  1 to: tempNames size do: [ :index | 
    | tempVar |
    tempVar := (tempNames at: index) asSymbol.
    litVarArray
      add: tempVar;
      add:
          (SymbolAssociation key: tempVar value: (self object argAndTempNamesAt: index)) ].
  ^ litVarArray