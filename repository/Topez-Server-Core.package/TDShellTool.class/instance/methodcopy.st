method
methodcopy
  "
  method [--class ] copy <method-spec> <class-ref>...
"

  | list isMeta methodDefs |
  self getSubcommandOptsMixedLongShort: {#('class' nil #'none')}.
  isMeta := false.
  subOptions at: 'class' ifPresent: [ :ignored | isMeta := true ].
  methodDefs := self findMethodSpec: (subArguments at: 1).
  list := Set new.
  2 to: subArguments size do: [ :index | 
    | clsRef theBehavior |
    clsRef := subArguments at: index.
    theBehavior := self resolveClassReference: clsRef.
    isMeta
      ifTrue: [ theBehavior := theBehavior class ].
    list addAll: methodDefs.
    methodDefs do: [ :methodDef | self methodcopy: methodDef to: theBehavior ] ].
  ^ list