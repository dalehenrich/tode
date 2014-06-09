method
methodbrowse
  "
  method browse <method-spec>...
"

  | block label |
  self getSubcommandOptsMixedLongShort: {}.
  label := 'Implementors of'.
  subArguments do: [ :arg | label := label , ' ' , arg ].
  block := [ 
  | list |
  list := Set new.
  subArguments do: [ :arg | list addAll: (self findMethodSpec: arg) ].
  list ].
  ^ self browseMethodsBlock: block label: label