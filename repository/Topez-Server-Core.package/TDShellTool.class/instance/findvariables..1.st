find
findvariables
  "
  find variables --class=<class-name> <variable-name>...
"

  self getSubcommandOptsMixedLongShort: {#('class' nil #'required')}.
  ^ self findVariables