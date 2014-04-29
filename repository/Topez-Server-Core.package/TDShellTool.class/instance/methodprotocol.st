method
methodprotocol
  "
  method protocol <method-protocol> <method-spec>...
"

  | list protocol |
  self getSubcommandOptsMixedLongShort: {}.
  list := Set new.
  protocol := (subArguments at: 1) asSymbol.
  2 to: subArguments size do: [ :index | 
    | methodSpec methodDefs |
    methodSpec := subArguments at: index.
    methodDefs := self findMethodSpec: methodSpec.
    list addAll: methodDefs.
    methodDefs
      do: [ :methodDef | methodDef theBehavior classify: methodDef selector under: protocol ] ].
  ^ list