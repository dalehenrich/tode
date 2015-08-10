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
  block := [ 
  | list |
  list := self findPackage.
  list := self filterBrowseList: list ].
  ^ self browseClassesBlock: block label: 'Classes in package' , pattern