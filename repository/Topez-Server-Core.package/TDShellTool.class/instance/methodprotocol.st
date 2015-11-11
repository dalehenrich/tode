method
methodprotocol
  "
  method protocol <method-protocol> <method-spec>...
"

  | list protocol |
  self getSubcommandOptsMixedLongShort: {}.
  list := Set new.
  protocol := (subArguments
    at: 1
    ifAbsent: [ 
      self
        error:
          'Missing required argument <method-protocol>. See `man method protocol` for details.' ])
    asSymbol.
  subArguments size < 2
    ifTrue: [ 
      self
        error:
          'Missing required argument <method-spoec>. See `man method protocol` for details.' ].
  2 to: subArguments size do: [ :index | 
    | methodSpec methodDefs |
    methodSpec := subArguments at: index.
    methodDefs := self findMethodSpec: methodSpec.
    list addAll: methodDefs.
    methodDefs
      do: [ :methodDef | self methodprotocol: methodDef under: protocol ] ].
  ^ list