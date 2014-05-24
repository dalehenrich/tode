browse
browsevariables
  "
  browse variables --class=<class-name> <variable-name>...
"

  | block cls label |
  self getSubcommandOptsMixedLongShort: {#('class' nil #'required')}.
  label := 'Variable references to:'.
  subArguments do: [ :arg | label := label , ' ' , arg ].
  block := [ 
  | list |
  list := Set new.
  subOptions
    at: 'class'
    ifPresent: [ :className | cls := self resolveClassReference: className ].
  subArguments
    do: [ :arg | list addAll: (self findReferences: arg asSymbol inClass: cls) ].
  list := self filterBrowseList: list ].
  ^ self browseMethodsBlock: block label: label