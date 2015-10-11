find
findclass
  "
  find class [--exact] [--hier] <class-name-pattern>...
"

  self
    getSubcommandOptsMixedLongShort:
      {#('exact' nil #'none').
      #('hier' nil #'none')}.
  ^ self findClass