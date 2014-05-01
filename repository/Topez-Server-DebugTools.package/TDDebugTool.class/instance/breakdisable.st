commands
breakdisable
  "
  break disable  [<breakpoint-id>...]
"

  self getSubcommandOptsMixedLongShort: {}.
  ^ self breakDisable: subArguments