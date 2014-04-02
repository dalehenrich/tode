browse
browsepackage
  "
  browse package <regex-pattern>
  browse package --exact <package-name>
"

  | list pattern |
  self getSubcommandOptsMixedLongShort: {#('exact' nil #'none')}.
  list := Set new.
  pattern := ''.
  subArguments
    do: [ :arg | 
      subOptions
        at: 'exact'
        ifPresent: [ :ignored | list addAll: (self findPackageDefinitionsExact: arg) ]
        ifAbsent: [ list addAll: (self findPackageDefinitions: arg) ].
      pattern := pattern , ' ' , arg ].
  ^ self browseClasses: list label: 'Defs in package' , pattern