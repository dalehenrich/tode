browse
browsediff
  "
  browse diff <method-spec-1> <method-spec-2>
"

  | list |
  self getSubcommandOptsMixedLongShort: {}.
  list := {}.
  subArguments do: [ :arg | list addAll: (self findMethodSpec: arg) ].
  list size ~= 2
    ifTrue: [ 
      self
        error:
          'Two arguments reguired: <method-spec-1> <method-spec-2>. See `man browse diff` for more details' ].
  ^ self browseDiff: list