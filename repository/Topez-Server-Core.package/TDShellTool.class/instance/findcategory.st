find
findcategory
  "
  find category [--hier] <category-name-pattern>...
  find category [--hier] --exact <category-name>...
"

  self
    getSubcommandOptsMixedLongShort:
      {#('exact' nil #'none').
      #('hier' nil #'none')}.
  ^ self findcategory: subArguments options: subOptions