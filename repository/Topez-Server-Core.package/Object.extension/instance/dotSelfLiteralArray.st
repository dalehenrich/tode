*topez-server-core
dotSelfLiteralArray
  | litVarArray instVars dotSelf |
  litVarArray := {}.
  dotSelf := self dotSelfObject.
  instVars := dotSelf class allInstVarNames.
  1 to: instVars size do: [ :index | 
    | tempVar |
    tempVar := instVars at: index.
    litVarArray
      add: tempVar;
      add: (SymbolAssociation key: tempVar value: (dotSelf instVarAt: index)) ].
  ^ litVarArray