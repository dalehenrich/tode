find
findproject
  "
  find project <regex-pattern>
  find project --exact <project-name>
"

  | list |
  self getSubcommandOptsMixedLongShort: {#('exact' nil #'none')}.
  ^ self findProject