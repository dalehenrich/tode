find
findsender
  "
  find sender <selector>...
  find sender [--pure] <selector>...
  find sender [--regex|-r]] <selector-pattern>...
"

  | path list |
  self
    getSubcommandOptsMixedLongShort:
      {#('regex' $r #'none').
      #('pure' nil #'none')}.
  ^ self findSender