commands
breakenable
  "
  break enable  [<breakpoint-id>...]
"

  self getSubcommandOptsMixedLongShort: {}.
  ^ self breakEnable: subArguments