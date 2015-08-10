browse
findsymbolDict
  "
  find symbolDict [--hier] [--user=<user-id>] <symbol-dictionary-name>
  find symbolDict [--hier] --user=<user-id>
"

  self
    getSubcommandOptsMixedLongShort:
      {#('hier' nil #'none').
      #('user' nil #'required')}.
  ^ self findsSymbolDict