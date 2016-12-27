find
findsource
  "
  find source [--case] <regex-pattern>...
  find source --exact [--noCase] <source-string>...
"

  | path list |
  self
    getSubcommandOptsMixedLongShort:
      {#('exact' nil #'none').
      #('case' nil #'none').
      #('noCase' nil #'none')}.
  ^ self findSource