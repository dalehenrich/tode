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
  list := Set new.
  subArguments
    do: [ :arg | 
      subOptions
        at: 'exact'
        ifPresent: [ :ignored | list addAll: (self findPackageDefinitionsExact: arg) ]
        ifAbsent: [ list addAll: (self findPackageDefinitions: arg) ] ].
  list := self filterBrowseList: list ].
  ^ self browseClassesBlock: block label: 'Defs in package' , pattern