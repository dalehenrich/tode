find
findpackage
  "
  find package <regex-pattern>
  find package --exact <package-name>
"

  self getSubcommandOptsMixedLongShort: {#('exact' nil #'none')}.
  ^ self findPackage