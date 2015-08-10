browse
browsepackage
  "
  browse package <regex-pattern>
  browse package --exact <package-name>
"

  | block pattern |
  self getSubcommandOptsMixedLongShort: {#('exact' nil #'none')}.
  pattern := ''.
  subArguments do: [ :arg | pattern := pattern , ' ' , arg ].
  block := [ self findPackage ].
  ^ self browseClassesBlock: block label: 'Classes in package' , pattern