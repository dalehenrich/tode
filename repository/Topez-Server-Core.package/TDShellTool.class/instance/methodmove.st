method
methodmove
  "
  method [--class] move <method-spec> <class-ref>
"

  | list isMeta methodDefs clsRef theBehavior |
  self getSubcommandOptsMixedLongShort: {#('class' nil #'none')}.
  isMeta := false.
  subOptions at: 'class' ifPresent: [ :ignored | isMeta := true ].
  methodDefs := self
    findMethodSpec:
      (subArguments
        at: 1
        ifAbsent: [ 
          self
            error:
              'Missing required argument <method-spec>. See `man method move` for details.' ]).
  list := Set new.
  clsRef := subArguments
    at: 2
    ifAbsent: [ 
      self
        error:
          'Missing required argument <class-ref>. See `man method move` for details.' ].
  theBehavior := self resolveClassReference: clsRef.
  isMeta
    ifTrue: [ theBehavior := theBehavior class ].
  list addAll: methodDefs.
  methodDefs do: [ :methodDef | self methodmove: methodDef to: theBehavior ].
  ^ list