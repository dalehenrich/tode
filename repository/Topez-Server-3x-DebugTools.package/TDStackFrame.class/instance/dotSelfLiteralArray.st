as yet unclassified
dotSelfLiteralArray
  | litVarArray tempNames |
  litVarArray := {}.
  tempNames := self argAndTempNames.
  1 to: tempNames size do: [ :index | 
    | tempVar |
    tempVar := (tempNames at: index) asSymbol.
    litVarArray
      add: tempVar;
      add:
          (SymbolAssociation key: tempVar value: (self argAndTempNamesAt: index)) ].
  ^ litVarArray