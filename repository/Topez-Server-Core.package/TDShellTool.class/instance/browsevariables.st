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
  list := self findVariables.
  list := self filterBrowseList: list ].
  ^ self browseMethodsBlock: block label: label