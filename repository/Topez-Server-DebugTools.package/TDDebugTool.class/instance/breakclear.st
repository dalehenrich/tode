commands
breakclear
  "
  break clear  [<breakpoint-id>...]
"

  self getSubcommandOptsMixedLongShort: {}.
  ^ self breakClear: subArguments