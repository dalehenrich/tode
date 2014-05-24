method
methodremove
  "
  method remove <method-spec>...
"

  | list methodDefs clsRef theBehavior |
  self getSubcommandOptsMixedLongShort: {}.
  subArguments
    do: [ :methodSpec | 
      methodDefs := self findMethodSpec: methodSpec.
      list := Set new.
      list addAll: methodDefs.
      methodDefs do: [ :methodDef | self methodremove: methodDef ] ].
  ^ list